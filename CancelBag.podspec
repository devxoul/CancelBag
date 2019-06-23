Pod::Spec.new do |s|
  s.name             = "CancelBag"
  s.version          = "1.0.0"
  s.summary          = "A DisposeBag for Combine"
  s.homepage         = "https://github.com/devxoul/CancelBag"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Suyeol Jeon" => "devxoul@gmail.com" }
  s.source           = { :git => "https://github.com/devxoul/CancelBag.git",
                         :tag => s.version.to_s }
  s.source_files     = "Sources/**/*.{swift,h,m}"
  s.frameworks       = "Foundation", "Combine"
  s.swift_version    = "5.1"

  s.osx.deployment_target = "10.15"
  s.ios.deployment_target = "13.0"
  s.tvos.deployment_target = "13.0"
  s.watchos.deployment_target = "6.0"
end
