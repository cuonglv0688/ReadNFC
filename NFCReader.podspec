Pod::Spec.new do |spec|

  spec.name         = "NFCReader"
  spec.version      = "1.0.17"
  spec.summary      = "A CocoaPods library written in Swift"

  spec.description  = <<-DESC
  This CocoaPods library helps you read nfc card
                   DESC

  spec.homepage     = "https://github.com/cuonglv0688/ReadNFC"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "cuonglv" => "cuonglv0688@gmail.com" }
  spec.source        = { :git => "https://github.com/cuonglv0688/ReadNFC.git", :tag => "#{spec.version}" }
  spec.vendored_frameworks = 'NFCReaderFW.xcframework'
  spec.platform = :ios
  spec.swift_version = "5.0"
  spec.ios.deployment_target  = '12.0'
  spec.dependency "OpenSSL-Universal", '1.1.1900'
  spec.dependency "QKMRZScanner", '3.0.0'
  spec.xcconfig          = { 'OTHER_LDFLAGS' => '-weak_framework CryptoKit -weak_framework CoreNFC -weak_framework CryptoTokenKit' }

  spec.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end
