namespace :test do
  task :prepare do
    system(%Q{mkdir -p "Tests/MGObjectiveUtilsTests.xcodeproj/xcshareddata/xcschemes" && cp Tests/Schemes/*.xcscheme "Tests/MGObjectiveUtilsTests.xcodeproj/xcshareddata/xcschemes/"})
  end

  desc "Run the MGObjectiveUtils Tests for iOS"
  task :ios => :prepare do
    $ios_success = system("xctool -workspace MGObjectiveUtils.xcworkspace -scheme 'Tests' -sdk iphonesimulator -configuration Release test -test-sdk iphonesimulator")
  end

end

desc "Run the MGObjectiveUtilsTests for iOS"
task :test => ['test:ios'] do
  puts "\033[0;31m! Tests failed" unless $ios_success
  if $ios_success
    puts "\033[0;32m** All tests executed successfully"
  else
    exit(-1)
  end
end

task :default => 'test'
