#
# Be sure to run `pod lib lint EQPlayerSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'EQPlayerSDK'
  s.version          = '0.1.3'
  s.summary          = 'Introducing EQPlayerSDK for iOS, capable of DRM-protected playback.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  'Presenting iOS EQPlayerSDK for seamless DRM-enabled playback, enhancing multimedia apps with secure content delivery and an exceptional user experience.'
                       DESC

  s.homepage         = 'https://github.com/gabielchong/EQPlayerSDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'gabielchong' => 'gabielchong@gmail.com' }
  s.source           = { :git => 'https://github.com/gabielchong/EQPlayerSDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.swift_version = '5.0'
  s.ios.deployment_target = '11.0'

  s.source_files = 'EQPlayerSDK/Classes/**/*'
  
  # s.resource_bundles = {
  #   'EQPlayerSDK' => ['EQPlayerSDK/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
