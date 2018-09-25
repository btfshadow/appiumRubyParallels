require 'pry'
require 'appium_lib'
# require 'rspec/expectations'
require 'rspec/expectations'
require 'rubygems'
require 'rtesseract'

test_batch_id = ENV['TEST_BATCH_ID']
plataforma = ENV['PLATAFORMAAPI']
appiumtxt = ENV['PLATFORM']
jenkins = ENV['JENKINS']

# Class to not pollute 'Object' class with appium methods
class AppiumWorld
end
puts test_batch_id

caps = Appium.load_appium_txt file: File.expand_path("../support/#{jenkins}paralelo/#{plataforma}/#{appiumtxt}.txt", __dir__), verbose: true

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object

World do
  AppiumWorld.new
end
