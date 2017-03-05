#
# Be sure to run `pod lib lint Gotanda.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "PlaybackSlider"
  s.version          = "0.0.2"
  s.summary          = "A slider with cached segments indicator for macOS."

  s.description      = <<-DESC
A slider with cached segments indicator for macOS.
Suitable for movie playback slider.
                       DESC

  s.homepage         = "https://github.com/yokoe/PlaybackSlider"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Sota Yokoe" => "info@kreuz45.com" }
  s.source           = { :git => "https://github.com/yokoe/PlaybackSlider.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/croquette0212'

  s.osx.deployment_target = '10.10'

  s.source_files = "PlaybackSlider/**/*.{h,swift}"

  s.xcconfig = {
    'SWIFT_VERSION' => '3'
  }
end

