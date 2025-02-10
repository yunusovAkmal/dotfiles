# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-completions
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# load zsh-completions
autoload -U compinit && compinit

# use nvm
source /opt/homebrew/opt/nvm/nvm.sh

# Source Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Source Powerlevel10k configuration
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# NVM (Node Version Manager) settings
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Get machine's IP address
alias ip="ipconfig getifaddr en0"

# Get wifi IP address
alias wifiip="ipconfig getifaddr en1"

# Get local IP address

# Edit global zsh configuration
alias zshconfig="open ~/.zshrc"
# Reload zsh configuration
alias zshsource="source ~/.zshrc"
# Reload zsh configuration
alias ohmyzsh="cd ~/.oh-my-zsh"

# Navigate to global ssh directory
alias sshhome="cd ~/.ssh"
# Edit global ssh configuration
alias sshconfig="open ~/.ssh/config"

# Edit global git configuration
alias gitconfig="open ~/.gitconfig"

# -------
# Aliases
# -------
alias ll="ls -al" # List all files in current directory in long list format
alias o="open ." # Open the current directory in Finder
alias c="clear"
alias e="exit"

# -------
# pnpm Aliases
# -------
alias p="pnpm"
alias pi="pnpm install"
alias pa="pnpm add"
alias pd="pnpm dev"
alias pb="pnpm build"
alias pr="pnpm run"
alias psd="pnpm start:dev"

# -------
# yarn Aliases
# -------
alias y="yarn"
alias yi="yarn install"
alias ya="yarn add"
alias yd="yarn dev"
alias yb="yarn build"
alias yr="yarn run"
alias ysd="yarn start:dev"

# ----------------------
# Git Aliases
# ----------------------
alias gi='git init'
alias ga="git add ."
alias gc="git commit -m"
alias gs="git status"
alias gss='git status -s'
alias gb="git branch"
alias gp="git push"
alias gl="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gcl="git clone"
alias gpl="git pull"
alias gpo='git push -u origin'

# ----------------------
# Docker Aliases
# ----------------------
alias d="docker"
alias dc="docker compose"
alias dps="docker ps"                # List running containers
alias dpsa="docker ps -a"            # List all containers
alias di="docker images"             # List all Docker images
alias dbuild="docker build -t"       # Build a Docker image
alias drun="docker run -it"          # Run a container interactively
alias dexec="docker exec -it"        # Execute a command in a running container
alias drm="docker rm"                # Remove a stopped container
alias drmi="docker rmi"              # Remove a Docker image
alias dlogs="docker logs -f"         # Tail logs of a container

# ----------------------
# Docker Compose Aliases
# ----------------------
alias dcu="docker compose up"        # Start containers with Docker Compose
alias dcud="docker compose up -d"    # Start containers in detached mode
alias dcd="docker compose down"      # Stop and remove containers
alias dcps="docker compose ps"       # List running containers for Compose
alias dcb="docker compose build"     # Build images for Compose
alias dcl="docker compose logs -f"   # Tail logs for Docker Compose

# ----------------------
# NPM Aliases
# ----------------------
alias ni="npm install"                # Install dependencies
alias na="npm add"                    # Add a package
alias ns="npm start"                  # Start the application
alias nb="npm build"                  # Build the application
alias nr="npm run"                    # Run an npm script
alias nd="npm run dev"                # Run the development server
