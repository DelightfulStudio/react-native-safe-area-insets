Pod::Spec.new do |s|
  s.name          = "react-native-safe-area-insets"
  s.version       = "0.1.0"
  s.source_files  = "ios/**/*.{h,m}"
  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.0'
  s.authors       = { "delightfulstudio" => "https://github.com/DelightfulStudio" }
  s.license       = "MIT"
  s.summary       = "A simple react native module that allows to query `safeAreaInsets` of a current root view"
  s.homepage      = "https://github.com/DelightfulStudio/react-native-safe-area-insets"
  s.source        = { :git => "https://github.com/DelightfulStudio/react-native-safe-area-insets.git" }

  s.dependency 'React'
end
