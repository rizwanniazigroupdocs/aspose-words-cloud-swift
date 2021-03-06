properties([
	gitLabConnection('gitlab'),
	[$class: 'ParametersDefinitionProperty', 
		parameterDefinitions: [
			[$class: 'StringParameterDefinition', name: 'branch', defaultValue: 'master', description: 'the branch to build'],
			[$class: 'StringParameterDefinition', name: 'apiUrl', defaultValue: 'https://api-qa.aspose.cloud', description: 'api url'],
            [$class: 'BooleanParameterDefinition', name: 'ignoreCiSkip', defaultValue: false, description: 'ignore CI Skip'],
		]
	]
])

def needToBuild = false

node('words-linux') {
	cleanWs()
    if (!params.branch.contains("release")) {
        dir('swift') {
            try {
                stage('checkout'){
                    checkout([$class: 'GitSCM', branches: [[name: params.branch]], doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'LocalBranch', localBranch: "**"]], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '361885ba-9425-4230-950e-0af201d90547', url: 'https://git.auckland.dynabic.com/words-cloud/words-cloud-sdk-swift.git']]])
                    
                    sh 'git show -s HEAD > gitMessage'
                    def commitMessage = readFile('gitMessage').trim()
                    echo commitMessage
                    needToBuild = params.ignoreCiSkip || !commitMessage.contains('[ci skip]')               
                    sh 'git clean -fdx'
                    
                    if (needToBuild) {
                        withCredentials([usernamePassword(credentialsId: '6839cbe8-39fa-40c0-86ce-90706f0bae5d', passwordVariable: 'ClientSecret', usernameVariable: 'ClientId')]) {
                            sh 'mkdir -p Settings'
                            sh 'echo "{\\"ClientId\\": \\"$ClientId\\",\\"ClientSecret\\": \\"$ClientSecret\\", \\"BaseUrl\\": \\"$apiUrl\\"}" > Settings/servercreds.json'
                        }
                    }
                }
                
                if (needToBuild) {
                    docker.image('swift:5.0').inside{
                        stage('build'){
                            sh "swift build"
                        }
                    
                        stage('tests'){
                            try{
                                sh "chmod +x ./Scripts/runTests.sh"
                                sh "./Scripts/runTests.sh"
                            } finally{
                                junit 'tests.xml'
                            }
                        }
                        
                        stage('clean-compiled'){
                            sh "rm -rf %s"
                        }
                    } 
                }
            } finally {
                deleteDir()
            }
        }
    }
}