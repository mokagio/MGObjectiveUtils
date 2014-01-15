Pod::Spec.new do |s|
  s.name         = "MGObjectiveUtils"
  s.version      = "0.0.2"
  s.summary      = "A set of useful classes and categories. Intended to be a Pod, but needs a lot of polishing first."
  s.homepage     = "http://EXAMPLE/MGObjectiveUtils"  
  s.license      = 'MIT'
  s.author       = { "Gio" => "mokagio42@gmail.com" }
  s.source       = { :git => "https://github.com/mokagio/MGObjectiveUtils.git", :tag => "#{s.version}" }
  s.source_files = 'MGObjectiveUtils/Classes', 'MGObjectiveUtils/Categories/**/*.{h,m}', 'MGObjectiveUtils/**/*.{h.m}'
  s.platform = :ios, "7.0"
  s.requires_arc = true
  s.frameworks = 'UIKit'
end