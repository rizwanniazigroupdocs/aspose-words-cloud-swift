parameters {
        string(name: 'branch', defaultValue: 'master', description: 'branch to test')		
		string(name: 'testServerUrl', defaultValue: 'https://api-qa.aspose.cloud', description: 'server url')		
}

def runtests(version)
{
    dir(version){
        try {
            stage('checkout'){
                checkout([$class: 'GitSCM', branches: [[name: params.branch]], doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'LocalBranch', localBranch: "**"]], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '361885ba-9425-4230-950e-0af201d90547', url: 'https://git.auckland.dynabic.com/words-cloud/aspose.words-cloud-sdk-swift.git']]])
                withCredentials([usernamePassword(credentialsId: '6839cbe8-39fa-40c0-86ce-90706f0bae5d', passwordVariable: 'AppKey', usernameVariable: 'AppSid')]) {
					sh 'mkdir -p Settings'
                    sh 'echo "{\\"AppSid\\": \\"$AppSid\\",\\"AppKey\\": \\"$AppKey\\", \\"BaseUrl\\": \\"$testServerUrl\\"}" > Settings/servercreds.json'
                }
            }
            
            docker.image('swift:' + version).inside{
                stage('build'){
					sh "swift build"
				}
            
                stage('tests'){
					try{
						sh "swift test | tee .build/testReport.log"
					} finally{
						junit '.build/testReport.log'
					}
                }
            
                stage('bdd-tests'){
					
                }
				
				stage('clean-compiled'){
					sh "rm -rf %s"
				}
            }        
        } finally {
			deleteDir()
        }
    }
}

node('words-linux') {
	cleanWs()
    if (!params.branch.contains("release")) {
	    runtests("4.2")
        runtests("5.0")
    }

}