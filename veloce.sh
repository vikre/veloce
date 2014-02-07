#!/bin/bash

name="VELOCE"
version="v0.0.0"

echo
echo -e "\033[33;36m $name \033[33;34m $version \033[0m"
echo

#----------------------- HomeBrew -----------------------
echo
echo -e "\033[33;32m ==> Installing HomeBrew \033[0m"
echo 
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

#----------------------- HomeBrewing -----------------------
echo
echo -e "\033[33;33m ==> Installing via Brew \033[0m"
echo 
# brew.txt
while read line           
do           
  brew install $line
done <brew.txt

# PRINT out what is installed
brew list

#----------------------- Brew-Cask -----------------------
echo
echo -e "\033[33;31m ==> Installing via Brew Cask \033[0m"
echo
# cask.txt
while read line
do
  brew cask install $line
  echo $line
done <cask.txt

# Alfred Integration
brew cask alfred

# PRINT out what is installed
brew cask list


#----------------------- AppStore -----------------------
echo
echo -e "\033[33;35m ==> Install in AppStore: \033[0m"
echo
# appstore.txt
while read line           
do           
  echo $line
done <appstore.txt

