# Install Homebrew

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

sudo softwareupdate -i -a
xcode-select --install
cd ~/Documents
git clone git@github.com:qihao96/config-dotfile.git
cd config-dotfile
source dotfiles/mac_install.sh
cp ~/dotfiles/.mackup.cfg ~/
cp -r ~/dotfiles/.mackup ~/

brew install mackup

mackup restore

pip install --upgrade pip
pip install powerline-status
pip install MySQL-python
pip install tornado
pip install torndb
pip install pycrypto
pip install mock
# npm、gem ...

ssh-keygen -t rsa



# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew tap homebrew/versions
brew update
brew upgrade --all

# Install packages
apps=(
    caskroom/cask/brew-cask
    cmake
    coreutils
    findutils
    git
    gnu-sed --with-default-names
    go
    hugo
    mercurial
    mackup
    macvim
    mysql
    android-platform-tools
    python
    ruby
    svn
    vim
    wget
    zsh
)

caskapps=(
    android-studio
    alfred
    atom
    cheatsheet
    dash
    genymotion
    google-chrome
    intellij-idea-ce
    iterm2
    java
    karabiner
    keepassx
    kindle
    macdown
    pomotodo
    pycharm-ce
    qq
    qqmusic
    qqmacmgr
    sogouinput
    thunder
    vagrant
    virtualbox
    vlc
    wiznote
    youdao
)

brew install "${apps[@]}"
brew tap caskroom/versions
brew cask update
brew cask install --appdir="/Applications" "${caskapps[@]}"
brew cleanup
brew cask cleanup

# 关闭开机声音
sudo nvram SystemAudioVolume=" "

# 电池显示是百分百
defaults write com.apple.menuextra.battery -bool true

# 设置键盘按键重复的延迟
defaults write NSGlobalDomain KeyRepeat -int 3

# 禁止自动拼写纠正
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Finder 显示状态栏
defaults write com.apple.finder ShowStatusBar -bool true

# Finder 显示地址栏
defaults write com.apple.finder ShowPathbar -bool true

# 禁止在网络驱动器上生成 .DS_Store 文件 
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# 拷贝到 ~/Library/Fonts/ 目录
cp -r ~/dotfiles/fonts/* ~/Library/Fonts/

# zsh 中使用 powerline 字体，只需要在 .zshrc 中加一句
source /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh

# 在 vim 里使用 powerline 字体，只需要在 .vimrc 里加：
set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim
set laststatus=2

brew install ariac2
aria2c --conf-path=/PATH/TO/aria2.conf -D