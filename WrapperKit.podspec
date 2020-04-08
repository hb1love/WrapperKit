Pod::Spec.new do |s|
  s.name             = "WrapperKit"
  s.version          = "1.0.0"
  s.summary          = "🌷 Swift Property Wrappers Kit"
  s.homepage         = "https://github.com/hb1love/WrapperKit"
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { "Kim Heebeom" => "heebuma@gmail.com" }
  s.source           = { :git => "https://github.com/hb1love/WrapperKit.git", :tag => s.version.to_s }
  s.source_files     = 'Sources/*.swift'

  s.ios.deployment_target = "8.0"

  s.swift_versions = ['5.1', '5.2']
end
