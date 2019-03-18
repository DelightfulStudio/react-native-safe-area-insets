Pod::Spec.new do |s|
  s.name         = "react-native-safe-area-insets"
  s.version      = "0.1.0"
  s.summary      = "A simple react native module that allows to query `safeAreaInsets` of a current root view"
  s.homepage     = "https://github.com/DelightfulStudio/react-native-safe-area-insets"
  s.license      = "MIT"
  s.author       = { "Delightful Studio" => "hello@delightful.studio" }

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/DelightfulStudio/react-native-safe-area-insets.git", :tag => "v#{s.version}" }
  s.source_files  = "ios/**/*.{h,m}"
  s.preserve_paths  = "**/*.js"

  s.dependency 'React'
end
