# My MacBook Programming Setup

This repository contains my dotfiles and setup instructions for my MacBook programming environment.

## Setup Instructions

### 1. Install Homebrew

Install [Homebrew](https://brew.sh/), a package manager for macOS:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 2. Install GUI applications

```bash
brew install --cask iterm2 zoom google-chrome telegram-desktop raycast visual-studio-code docker
```

### 3. Install terminal applications

```bash
brew install git nvm yarn pnpm
```

## Oh My Zsh Setup

### 1. Install

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### 2. Update everything (e.g. plugins) in Oh My Zsh to recent version:

```bash
omz update
```

Important: If you change something in your Zsh configuration (.zshrc), force a reload:

```bash
source ~/.zshrc
```

### 3. Install powerlevel10k theme

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
```

Type if the configuration wizard doesn't start automatically.

```bash
p10k configure
```

### 4. Install plugins

Install [zsh-completions](https://github.com/zsh-users/zsh-completions)
Install [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
Install [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
