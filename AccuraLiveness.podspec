Pod::Spec.new do |spec|

  spec.name         = "AccuraLiveness"
  spec.version      = "2.1.4"
  spec.summary      = "Accura Liveness is used for your customer verification and authentication."
  spec.description  = "Accura Authentication is used for your customer verification and authentication.Unlock the True Identity of Your Users with 3D Selfie Technology"
  spec.homepage     = "https://github.com/accurascan/iOS-KYC"
  spec.license      = "MIT"
  spec.author       = { "AccuraScan" => "connect@accurascan.com" }
  spec.platform     = :ios, "12.0"
  spec.static_framework = true
  spec.source       = { :git => "https://github.com/accurascan/Liveness-SDK-iOS.git", :tag => "2.1.4" }
  spec.preserve_paths = 'AccuraLiveness.framework'
  spec.vendored_frameworks = 'AccuraLiveness.framework'
  spec.requires_arc = true
  spec.swift_version = "5.0"
  spec.exclude_files = "accuraocrSDK/*/.{png}"
  # spec.resource = 'GoogleService-Info.plist'
  spec.dependency 'Firebase/MLVision','6.34.0'
  spec.dependency 'AFNetworking','3.2.1'
  spec.dependency 'SVProgressHUD'
  spec.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end