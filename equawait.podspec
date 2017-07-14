#
# Be sure to run `pod lib lint equawait.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'equawait'
  s.version          = '0.1.6'
  s.summary          = 'Simple Loader indicator in a form of vertical equalizers and text'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'Simple Loader indicator in a form of vertical equalizers and text, colors and text are configurable'


  s.homepage         = 'https://github.com/galblank/equawait'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Blank, Gal' => 'galblank@gmail.com' }
  s.source           = { :git => 'https://github.com/galblank/equawait.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/galblank'

  s.ios.deployment_target = '10.0'

  s.source_files = '**/*'
  
  # s.resource_bundles = {
  #   'equawait' => ['equawait/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
