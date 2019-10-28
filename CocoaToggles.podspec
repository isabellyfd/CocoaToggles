#
# Be sure to run `pod lib lint CocoaToggles.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CocoaToggles'
  s.version          = '0.1.4'
  s.summary          = 'A Swift based framework to use feature toggles (a.k.a feature flags).'
  s.swift_versions   = '4.0'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This a native framework written in Swift that aims enable developers to use feature toggle while using Continuous Integration and Continuous Delivery throughout the software delivery roadmap.
                       DESC

  s.homepage         = 'https://github.com/isabellyfd/CocoaToggles'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'isabellyfd' => 'icfd@cin.ufpe.br' }
  s.source           = { :git => 'https://github.com/isabellyfd/CocoaToggles.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'CocoaToggles/Classes/**/*'
  
  # s.resource_bundles = {
  #   'CocoaToggles' => ['CocoaToggles/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
