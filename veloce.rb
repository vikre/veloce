#!/usr/bin/ruby

require 'fileutils' #I know, no underscore is not ruby-like
include FileUtils

name = String.new("VELOCE")
version = String.new("v0.0.1")

puts name + " " + version

#----------------------- HomeBrew -----------------------
puts " "
puts "==> Installing HomeBrew"
puts " "
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

#----------------------- HomeBrewing -----------------------
puts " "
puts "==> Installing HomeBrew"
puts " "
f = File.open("brew.txt", "r")
f.each_line do |line|
  system "brew install " + line
end
f.close

# PRINT out what is installed
system "brew list"

#----------------------- HomeBrewing -----------------------
puts " "
puts "==> Installing Brew Cask"
puts " "
f = File.open("cask.txt", "r")
f.each_line do |line|
  system "brew cask install " + line
end
f.close

# Alfred Integration
system "brew cask alfred"

# PRINT out what is installed
system "brew cask list"
