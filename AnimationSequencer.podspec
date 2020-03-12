#
# Be sure to run `pod lib lint AnimationSequencer.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AnimationSequencer'
  s.version          = '0.1.0'
  s.summary          = 'Very simple and scalable UIView animation extension without nested completion closures.'
  s.description      = <<-DESC
Very simple and scalable UIView animation extension without nested completion closures. It uses standard iOS api but wraps around a nicer look.

Usally we make animations using system `animate()` method and completion block, but in my experience it's not scalable, very hard to read and it's hard to remove or add a new animation according to design specifications.
                       DESC

  s.homepage         = 'https://github.com/fabiosoft/AnimationSequencer'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'fabiosoft' => 'fabionisci@gmail.com' }
  s.source           = { :git => 'https://github.com/fabiosoft/AnimationSequencer.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.swift_versions = '5.1'

  s.source_files = 'AnimationSequencer/Classes/**/*'
end
