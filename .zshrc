if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# tmux
# source ~/.config/tmux.conf
tmux source ~/.config/tmux.conf > /dev/null 

# pnpm
export PNPM_HOME="/Users/brijesh/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# fnm
export PATH="/Users/brijesh/Library/Application Support/fnm:$PATH"
eval "`fnm env`"

# custom

function mkcd() {
  mkdir -p "$@" && cd "$@"
}

alias lsh="ls -lah"

alias ctime="cd /Users/brijesh/Developer/projects/current-time && cargo run"

alias projects="cd /Users/brijesh/Developer/projects/"
alias learning="cd /Users/brijesh/Developer/learning/"
alias websites="cd /Users/brijesh/Developer/websites/"
alias archives="cd /Users/brijesh/Developer/archives/"
alias scripts="cd /Users/brijesh/Developer/scripts/"
alias np="cd /Users/brijesh/Developer/scripts/np && sh new-project.sh"

function handle() {
  local new_name=$1
  mv *.mp3 "$new_name".mp3
  mv *.mp3 day-20
}

# todo
# write a function for backup
#   - it should give an actual select to choose folders to backup
#   - it should ask for backup locations (on-site, owned off-site, third party off-site with redundancy)

# bun completions
[ -s "/Users/brijesh/.bun/_bun" ] && source "/Users/brijesh/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
