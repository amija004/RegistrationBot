# check if homebrew is installed and install if not
if [ ! -e /usr/local/bin/brew ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# install necessary dependencies
brew cask install chromedriver
brew install python

# navigate to the directory and install requirements
cd RegistrationBot
pip3 install -r requirements.txt

# change time server to match SIS
/usr/sbin/systemsetup -setnetworktimeserver "tick.usno.navy.mil"
/usr/sbin/systemsetup -setusingnetworktime on
clear
echo "Installation complete. Refer to README.md for running instructions."