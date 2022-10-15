#!/usr/bin/env bash

apt-get update && apt-get -y install build-essential procps curl file git
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
