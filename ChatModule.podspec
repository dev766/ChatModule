#
# Be sure to run `pod lib lint ChatModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ChatModule'
  s.version          = '0.1.0'
  s.summary          = 'This is my Chat module to crate chat kit use can use it but its not complet.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
'Here we create chat module sdk for easy to use anyone can use this by installing pod '
                       DESC

  s.homepage         = 'https://github.com/dev766/ChatModule.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'akash' => 'akashpatil338@gmail.com' }
  s.source           = { :git => 'https://github.com/dev766/ChatModule.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'
  s.swift_version = '5.0'
  s.source_files = 'Source/**/*.swift'
  s.resources = ["Source/**/*.storyboard"]

  
  # s.resource_bundles = {
  #   'ChatModule' => ['ChatModule/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  #s.dependency 'AFNetworking', '~> 2.3'

  s.dependency 'FirebaseCore'
  s.dependency 'Firebase/Auth', '~> 9.2.0'

  #s.dependency 'SwiftKeychainWrapper'

end
