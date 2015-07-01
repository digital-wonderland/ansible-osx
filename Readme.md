# ansible-osx

An automated way to install most things __I__ need on a fresh OS X install by leveraging [Homebrew](http://brew.sh/) and [Ansible](http://www.ansible.com).

__Note: this is no customizable playbook but simply a quick hack to install things based on my personal preferences.__

# Usage

Clone this repository and cd into it:

```
$ git clone https://github.com/digital-wonderland/ansible-osx
$ cd ansible-osx
```

__Note: You will want to review [```osx.yml```](https://github.com/digital-wonderland/ansible-osx/blob/master/osx.yml) to prevent things you don't want from getting installed.__

Then bootstrap it:

```
$ ./bootstrap.sh
```

This will install

* _Xcode Command Line Tools_
* [Homebrew](http://brew.sh/)
* [Homebrew-Cask](https://github.com/caskroom/homebrew-cask)
* [Ansible](http://www.ansible.com)

Then the things specified within ```osx.yml``` will get installed:

* Essentials
  * _Bash-Completion_
  * [Git](https://git-scm.com/)
* Browsers
  * [Firefox](https://www.mozilla.org/de/firefox/new/)
  * [Google Chrome](https://www.google.de/chrome/browser/desktop/)
  * [Opera](http://www.opera.com)
* Java
  * [Java](http://www.oracle.com/technetwork/java/javase/downloads/index.html)
  * [jEnv](http://www.jenv.be/)
* Ruby
  * [rbenv](https://github.com/sstephenson/rbenv)
  * [rbenv-default-gems](https://github.com/sstephenson/rbenv-default-gems)
  * [rbenv-gem-rehash](https://github.com/sstephenson/rbenv-gem-rehash)
  * [rbenv-gemset](https://github.com/jf/rbenv-gemset)
* Scala
  * [sbt](http://www.scala-sbt.org/)
  * [scala](http://www.scala-lang.org/)
* Various
  * [Atom](https://atom.io/)
  * [Colloquy](http://colloquy.info/)
  * [Docker](https://www.docker.com/)
  * [f.lux](https://justgetflux.com/)
  * [Ghostlab](http://vanamco.com/ghostlab/)
  * [HandBrake](https://handbrake.fr/)
  * [Intellij IDEA](https://www.jetbrains.com/idea/)
  * [iTerm2](https://www.iterm2.com/)
  * [LightPaper](http://www.ashokgelal.com/lightpaper-for-mac/)
  * [MenuMeters](http://www.ragingmenace.com/software/menumeters/)
  * [Packer](https://packer.io/)
  * [Skype](http://www.skype.com)
  * [SourceTree](https://www.sourcetreeapp.com/)
  * [TextMate](https://macromates.com/)
  * [tmux](http://tmux.github.io/)
  * [Vagrant](https://www.vagrantup.com/)
  * [VirtualBox](https://www.virtualbox.org/)
  * [Viscosity](https://www.sparklabs.com/viscosity/)
  * [Wget](http://www.gnu.org/software/wget/)

# License

[The Unlicense](http://unlicense.org/)
