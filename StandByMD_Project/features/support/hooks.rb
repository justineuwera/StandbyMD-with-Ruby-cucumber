
require 'watir'
require 'page-object'
require 'fileutils'
require 'minitest/spec'
#require_relative 'hooks'

Before do
    @browser = Watir::Browser.new :chrome
#@browser.cookies.clear
end
  
After do
    sleep(10)
    @browser.close
end

