#
# Be sure to run `pod lib lint SwiftBooster.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SwiftBooster'
  s.version          = '0.1.0'
  s.summary          = 'Adds missing useful functionalities to Swift and CocoaTouch'
  s.description      = <<-DESC
Adds useful functionalities to Swift foundation and CocoaTouch framework.
Contains useful methods for work with JSON.
                       DESC

  s.homepage         = 'https://github.com/Sepehr  Behroozi/SwiftBooster'
  s.license          = { :type => 'Apache License 2.0', :file => 'LICENSE' }
  s.author           = { 'Sepehr  Behroozi' => '3pehrbehroozi@gmail.com' }
  s.source           = { :git => 'https://github.com/3pehrbehroozi/SwiftBooster.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/3pehrbehroozi'

  s.ios.deployment_target = '8.0'
  s.swift_version = '5'
  s.source_files = 'SwiftBooster/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SwiftBooster' => ['SwiftBooster/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'Foundation'
  # s.dependency 'AFNetworking', '~> 2.3'
end
