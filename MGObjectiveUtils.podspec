#
# Be sure to run `pod spec lint MGObjectiveUtils.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about the attributes see http://docs.cocoapods.org/specification.html
#
Pod::Spec.new do |s|
  s.name         = "MGObjectiveUtils"
  s.version      = "0.0.1"
  s.summary      = "Dummy dummy."
  s.homepage     = "http://EXAMPLE/MGObjectiveUtils"  
  s.license      = 'MIT'
  s.author       = { "Gio" => "mokagio42@gmail.com" }
  # Development EDGE
  s.source       = { :git => "https://github.com/mokagio/MGObjectiveUtils.git", :commit => "10c348a6154e13887de3e413319fe2032a1c3611" }
  # Master EDGE
  # s.source       = { :git => "https://github.com/mokagio/MGObjectiveUtils.git", :commit => "a652eee4576119cb29eb7146e2a826e03d4cac9e" }
  # Default. Doesn't work because all the FS changed
  # s.source       = { :git => "https://github.com/mokagio/MGObjectiveUtils.git", :tag => "0.0.1" }
  s.source_files = 'MGObjectiveUtils/Classes', 'MGObjectiveUtils/Classes/**/*.{h.m}'
  s.platform = :ios
  s.requires_arc = true
  s.frameworks = 'UIKit'
end