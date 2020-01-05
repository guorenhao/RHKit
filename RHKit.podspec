#
#  Be sure to run `pod spec lint RHKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = 'RHKit'
  s.version      = '1.2.1'
  s.summary      = 'iOS常用组件'
  s.homepage     = 'https://github.com/guorenhao/RHKit'
  s.license      = 'MIT'
  s.authors      = {'Abner_G' => 'grh_1990@126.com'}
  s.platform     = :ios, '8.0'   
  s.source       = {:git => 'https://github.com/guorenhao/RHKit.git', :tag => s.version}
  s.source_files = 'RHKit/**/*.{h,m}'
  s.frameworks   = 'UIKit', 'Foundation'
  s.requires_arc = true

end
