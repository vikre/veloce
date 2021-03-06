#!/usr/bin/ruby
name = String.new("VELOCE")
version = String.new("v0.1.0")

puts name + " " + version

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
puts "==> Bottles Installed"
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
system "brew cask alfred link"

# PRINT out what is installed
puts "==> Casks Installed"
system "brew cask list"
