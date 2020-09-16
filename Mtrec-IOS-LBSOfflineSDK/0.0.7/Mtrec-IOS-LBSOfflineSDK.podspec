#
#  Be sure to run `pod spec lint Mtrec-IOS-LBSOfflineSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "Mtrec-IOS-LBSOfflineSDK"
  spec.version      = "0.0.7"
  spec.summary      = "IOS BLE indoor localization for HKUST campus, covered AC2-7"

  
  spec.description  = <<-DESC
  Mtrec LBSOfflineSDK for IOS platflat. All right reserved by HKUST Multimedia technology research center.
                   DESC

  spec.homepage     = "https://github.com/wltsuiac/Mtrec-IOS-LBSOfflineSDK"
  
  spec.license      = "MIT"
  
  spec.author             = { "PeterTsui" => "ptsuiwl@ust.hk" }
  spec.platform     = :ios, "9.0"
  spec.ios.vendored_frameworks = 'LBSOfflineSDK.framework'

  spec.source       = { :git => "https://github.com/wltsuiac/Mtrec-IOS-LBSOfflineSDK.git", :tag => "#{spec.version}" }


  spec.exclude_files = "Classes/Exclude"
  
  spec.frameworks = "CoreLocation","CoreBluetooth","CoreMotion"

end
