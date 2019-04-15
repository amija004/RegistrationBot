# CWRU SIS Registration Bot:

Ever needed a class with one spot left? Get a bot to do it for you (if you're using \*NIX, at least)

## Dependency Install Scripts

Clone the repository and navigate to its directory.

```bash
git clone https://github.com/kclejeune/RegistrationBot.git
cd RegistrationBot
```
To run the installer script, use 
```bash
bash linuxInstall.sh
``` 
or 
```bash
bash macInstall.sh
```
depending on your operating system.

## Manual Install Instructions

Install the dependencies according to your preferred OS.

### Linux

```bash
sudo apt install python3 python3-pip chromium-chromedriver
```

### macOS

We'll use homebrew as our package manager to install the things we need. Running the following will install it if it isn't yet installed, along with the necessary dependencies.

```bash
# check if homebrew is installed and install if not
if [ ! -e /usr/local/bin/brew ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# install necessary dependencies
brew cask install chromedriver google-chrome
brew install python
clear
```

### Both

We'll need a few python libraries.  You can install them with

```bash
cd ~/RegistrationBot
pip3 install -r requirements.txt
```

## The Fun Stuff (kind of):

Start the script the night before (or the day of, if you're up past midnight). It'll automatically log you in the next time it's 7:00AM. 

## WARNING: YOU MUST MAKE SURE YOUR COMPUTER WILL NOT SLEEP BEFORE 7:00.  PLUG IT IN AND CHECK THE SETTINGS. 

Fair warning, it is *highly* recommended to use a utility to prevent your computer from sleeping. 
I'd recommend running `brew cask install keepingyouawake`, which will allow you to 'caffeinate' your computer overnight.

To run the script, use:
```bash
python3 ~/RegistrationBot/bot.py
```

Follow the instructions to enter your username, password (type carefully, you can't see the prompt for security reasons), and the semester you're registering for (i.e. registering for fall classes = f)
That's it, good luck!
