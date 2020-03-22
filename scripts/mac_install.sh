#-----------xcode-------------
xcode-select --install
curl -sLf https://spacevim.org/install.sh | bash

#-----------Homebrew-------------
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install node
npm install fanyi
which fanyi
echo "alias t=/usr/local/bin/fanyi" >> ~/.bash_profile