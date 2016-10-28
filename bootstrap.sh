#!/usr/bin/env bash

set -e

if [[ $(/usr/bin/gcc 2>&1) =~ "no developer tools were found" ]] || [[ ! -x /usr/bin/gcc ]]; then
    echo "Installing Command Line Tools"
    xcode-select --install
fi

if [[ ! -x /usr/local/bin/brew ]]; then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

if [[ ! -x /usr/local/bin/ansible ]]; then
    echo "Installing Ansible"
    brew update
    brew install ansible
fi

export PATH=/usr/local/bin:$PATH
ansible-playbook osx.yml --ask-become-pass

echo "Cleaning up"
brew cleanup
brew cask cleanup

