#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint google_mobile_ads_applovin.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'google_mobile_ads_applovin'
  s.version          = '7.0.0'
  s.summary          = 'Google Mobile Ads mediation plugin for AppLovin.'
  s.description      = <<-DESC
Google Mobile Ads mediation plugin for Applovin.
                       DESC
  s.homepage         = 'https://github.com/kunny/google_mobile_ads_applovin'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Taeho Kim' => 'jyte82@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.dependency 'GoogleMobileAdsMediationAppLovin', '12.1.0.0'
  s.ios.deployment_target = '11.0'
  s.static_framework = true

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
end
