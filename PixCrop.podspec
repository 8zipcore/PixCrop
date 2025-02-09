#
# Be sure to run `pod lib lint PixCrop.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PixCrop'
  s.version          = '0.4.0'
  s.ios.deployment_target = '13.0'
  s.swift_versions = '5.0'
  s.summary          = 'Image Editing library'
  s.description      = 'An image editing library for easily cropping and rotating images.'

  s.homepage         = 'https://github.com/8zipcore/PixCrop'
  s.source_files = 'PixCrop/Classes/**/*'
  s.dependency 'SnapKit', '>= 5.0.0'
  
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '8zipcore' => 'howtofindjayu@gmail.com' }
  s.source           = { :git => 'https://github.com/8zipcore/PixCrop.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  # s.resource_bundles = {
  #   'PixCrop' => ['PixCrop/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
