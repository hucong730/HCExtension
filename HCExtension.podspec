#
# Be sure to run `pod lib lint HCExtension.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HCExtension'
  s.version          = '0.4.2'
  s.summary          = 'Swift常用扩展'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
操作符，Swift常用对象，Cocoa对象等添加扩展。
                       DESC

  s.homepage         = 'https://github.com/hucong730/HCExtension'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'hucong730' => 'wddyzzw@icloud.com' }
  s.source           = { :git => 'https://github.com/hucong730/HCExtension.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.swift_version = '5.0'

  s.source_files = 'HCExtension/HCExtension/Classes/**/*'
  
  # s.resource_bundles = {
  #   'HCExtension' => ['HCExtension/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
