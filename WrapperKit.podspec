Pod::Spec.new do |s|
  s.name             = "WrapperKit"
  s.version          = "1.2.0"
  s.summary          = "🌷 Swift Property Wrappers Kit"
  s.homepage         = "https://github.com/hb1love/WrapperKit"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Theo Kim" => "heebuma@gmail.com" }
  s.source           = { :git => "https://github.com/hb1love/WrapperKit.git", :tag => s.version.to_s }
  s.source_files     = "Sources/**/*.{swift,h,m}"

  s.ios.deployment_target = "9.0"
  s.osx.deployment_target = "10.12"
  s.tvos.deployment_target = "10.0"
  s.watchos.deployment_target = "3.0"

  s.swift_version = "5.0"
end
