require 'pry'
require 'appium_lib'

if ENV['PLATFORM'] == 'android'
    caps = Appium.load_appium_txt file: File.expand_path("./../android/appium.txt", __FILE__), verbose: true
else
    caps = Appium.load_appium_txt file: File.expand_path("./../ios/appium.txt", __FILE__), verbose: true
end
  
Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object