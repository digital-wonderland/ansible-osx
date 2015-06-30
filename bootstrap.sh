#!/usr/bin/env bash

set -e

if [[ $(/usr/bin/gcc 2>&1) =~ "no developer tools were found" ]] || [[ ! -x /usr/bin/gcc ]]; then
    echo "Installing Command Line Tools"
    xcode-select --install
fi

if [[ ! -x /usr/local/bin/brew ]]; then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
    # Homebrew-cask can not be installed via ansible: https://github.com/ansible/ansible-modules-extras/issues/252
    echo "Installing Homebrew-cask"
    brew install caskroom/cask/brew-cask
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

