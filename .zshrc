# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="simple"

plugins=(git asdf aws)

source $ZSH/oh-my-zsh.sh

# User configuration
export GPG_TTY=$(tty)

alias helm2="/opt/homebrew/opt/helm@2/bin/helm"
alias tf="terraform"

# Detect Dark Mode
if [[ -z "${CODESPACES}" ]]; then
  export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock
  if defaults read -g AppleInterfaceStyle &>/dev/null; then
    # kitty +kitten themes --reload-in=all Github Dark
    mv ~/.config/k9s/skin.yml ~/.config/k9s/skin-light.yml 2>/dev/null; true
    export THEME="DARK"
    export CATPUCCIN_THEME="mocha"
    export TMUX_BG="#1f252a"
    # sed -i '' '31s/ffffff/1f252a/' ~/.tmux.conf

  else
    # kitty +kitten themes --reload-in=all Github-light-default
    mv ~/.config/k9s/skin-light.yml ~/.config/k9s/skin.yml 2>/dev/null; true
    export THEME="LIGHT"
    export CATPUCCIN_THEME="latte"
    export TMUX_BG="#ffffff"
    # sed -i '' '31s/1f252a/ffffff/' ~/.tmux.conf 
  fi
else 
  export TERM="tmux-256color"
fi

# Completion for GH
autoload -U compinit
compinit -i

# Config

export XDG_CONFIG_HOME=~/.config
export NODE_ENV=development
export APOLLO_TELEMETRY_DISABLED=1
export USE_GKE_GCLOUD_AUTH_PLUGIN=True

alias sz="source ~/.zshrc"
alias mark-local="~/GitHub/zgriesinger/mark/mark"
alias a="assume"
alias gs="git status"
alias k="kubectl"
alias c="cargo"
alias p="pnpm"
alias n="npm"
alias gpf="git commit -a --amend && git push -f"
alias dev="~/GitHub"
alias mono="~/GitHub/c2fo/mono"
alias z="~/GitHub/zackerydev"
alias notes="~/Documents/notes"
alias cop="copilot"
alias wt="git worktree"
alias web="gh pr view --web"
alias rt="cd ../../../"
alias aed="aws-vault exec default"
alias arc-runners='k9s --context eks-us-west-2-testing --namespace actions-runner-system'

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias df='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# pnpm
export PNPM_HOME="/Users/zack.griesinger/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
export PATH="$HOME/.moon/bin:$PATH"
# pnpm end

export PATH=$PATH:$(go env GOPATH)/bin

export AWS_SESSION_TOKEN_TTL=4h
export AWS_CHAINED_SESSION_TOKEN_TTL=4h
export AWS_ASSUME_ROLE_TTL=4h
export AWS_FEDERATION_TOKEN_TT=4h


export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export EDITOR=nvim

# bun completions
[ -s "/Users/zack.griesinger/.bun/_bun" ] && source "/Users/zack.griesinger/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
