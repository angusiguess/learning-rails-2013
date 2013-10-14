#Assignment Three

Create a small login system for our site, this will require the following.

A ```User``` model, which has been provided for you. This will have a username, a password, and an e-mail address.

A ```Secure``` view and controller. These will be pages that we'll want to restrict access to.

* This will have one action, index. It will need a ```before_action``` which will determine whether a user can view the ```Secure``` index action. In class we did this with a session variable. 

A ```Login``` controller

* This will have three actions:
  * a ```get``` action that will deliver the login form.
  * a ```post``` action that will validate the user.
  * a ```logout``` action which will log the user out.
  
If you have any questions, please don't hesitate to contact me!


#Setup and Installation

First we'll want to install Ruby. Without ruby none of the rest of the magic can happen!  If we're using OS X, the best way to go is probably homebrew, so let's go ahead and install that.

If you don't have Xcode installed with its command line utilities, now is probably a good idea to do that. Just hit up the Mac App store and prepare for a huge 4ish gig install.

There's a pretty good writeup that'll get us started with what we need right [here](http://www.interworks.com/blogs/ckaukis/2013/03/05/installing-ruby-200-rvm-and-homebrew-mac-os-x-108-mountain-lion)

If you're on Linux this should be a little easier. For Ubuntu just paste these in:

```
apt-get -y update
apt-get -y install build-essential zlib1g-dev libssl-dev libreadline6-dev libyaml-dev
cd /tmp
wget http://ftp.ruby-lang.org/pub/ruby/2.0/ruby-2.0.0-p0.tar.gz
tar -xvzf ruby-2.0.0-p0.tar.gz
cd ruby-2.0.0-p0/
./configure --prefix=/usr/local
make
make install
```

If you use some other flavor you're on your own, just ask Google, someone has probably had to deal with this.

If you're using Windows, ~~I am so, so, sorry~~ you might want to try using RubyInstaller. I know very little about it so your mileage may vary, but let me know how it works out!

#Bundler

We'll need bundler too. If you're using rvm you'll just want to use ```gem install bundler```. Bundler is a kind of package manager for ruby, and it will handle all of the gems for our project.

Great! Now we should be able to clone down the project and get started.

TODO: CLONE URL GOES HERE