Pod::Spec.new do |s|
  s.name             = 'AsposeWordsCloud'
  s.version          = '20.7'
  s.summary          = 'Aspose Words for Cloud.'
  s.homepage         = 'https://github.com/aspose-words-cloud/aspose-words-cloud-swift.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ivan.kishchenko' => 'ivankishchenko@aspose.com' }
  s.source           = { :git => 'https://github.com/aspose-words-cloud/aspose-words-cloud-swift.git', :tag => s.version.to_s }
  s.platform = :osx
  s.osx.deployment_target = "10.10"
  s.source_files = 'Sources/**/*'
end
