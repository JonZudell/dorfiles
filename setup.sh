#!/usr/bin/env bash
cd $(dirname $0)

apt-get update && apt-get -y install build-essential procps curl file git
cp ./.gitignore ~/.gitignore

bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

/home/linuxbrew/.linuxbrew/bin/brew shellenv >> ~/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

brew bundle --file ./Brewfile
