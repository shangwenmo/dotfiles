set EDITOR vim
alias cleanvim "rm ~/.vim/swapfiles/*"

export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

alias pbc "/usr/bin/pbcopy"
alias pbp "/usr/bin/pbpaste"

alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias flutter="/Users/shangwenmo/Code/resource/flutter/bin/flutter"

alias py3 "/usr/local/bin/python3"
alias sqlt "/usr/local/opt/sqlite/bin/sqlite3"
alias dc "docker stop (docker ps -a -q) && docker rm (docker ps -a -q)"

alias demos "cd (fd -d 1 '.' /Users/shangwenmo/Code/demo | fzf)"
alias demo "cd /Users/shangwenmo/Code/demo"
alias pd "cd (fd -d 1 '.' /Users/shangwenmo/paodingAI/projects | fzf)"

export https_proxy=http://127.0.0.1:7890
export http_proxy=http://127.0.0.1:7890
export all_proxy=socks5://127.0.0.1:7891
export no_proxy="localhost,127.0.0.1"

function nvm
   bass source /usr/local/opt/nvm/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR ~/.nvm

