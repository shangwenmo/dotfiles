set EDITOR vim
alias pbc "/usr/bin/pbcopy"
alias pbp "/usr/bin/pbpaste"

alias flutter="/Users/shangwenmo/Code/resource/flutter/bin/flutter"
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias py "/usr/local/bin/python3"
alias d "/usr/local/bin/docker"
alias sqlt "/usr/local/opt/sqlite/bin/sqlite3"

# alias pj "cd (fd -d 1 '.' /Users/shangwenmo/Code | fzf)"

alias demos "cd (fd -d 1 '.' /Users/shangwenmo/Code/demo | fzf)"
alias demo "cd /Users/shangwenmo/Code/demo"
alias note "cd /Users/shangwenmo/Nutstore/Notes/program"
alias pd "cd (fd -d 1 '.' /Users/shangwenmo/paodingAI | fzf)"

alias sp "cd (fd -d 1 '.' /Users/shangwenmo/Cloud/Sprints | fzf)"

alias cleanvim "rm ~/.vim/swapfiles/*"

export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export https_proxy=http://127.0.0.1:7890
export http_proxy=http://127.0.0.1:7890
export all_proxy=socks5://127.0.0.1:7891
export no_proxy="localhost,127.0.0.1"

function nvm
   bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR ~/.nvm

# query cheatsheet
function sheet
  ag --nocolor --nonumbers --nofilename "$argv" /Users/shangwenmo/Nutstore/Notes/program/cheatsheet | fzf
end

# rename
function rename
    if test (count $argv) -ne 3
        echo 'lack of arguments'
    end

    set oldSuffix $argv[1]
    set newSuffix $argv[2]
    set target $argv[3]

    if test -e $target

        if test -f $target
            set dir (dirname $target)

            set base (basename $target $oldSuffix)
            set filename (string join '/' $dir (string join '' $base $newSuffix))

            mv $target $filename
        end

        if test -d $target
            set fileList (fd $oldSuffix $target)

            for file in $fileList
                set dir (dirname $file)
                set base (basename $file $oldSuffix)
                set filename (string join '/' $dir (string join '' $base $newSuffix))

                mv $file $filename
            end
        end
    else
        echo 'file not existed'
    end

end

# alias subl "/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
# alias v "/usr/local/Cellar/vim/8.1.0150/bin/vim"
# alias f "fzf | read -l result; and v \$result"

#function sn
#  set dir "/Users/shangwenmo/Nutstore/Develop"
#  set arg ""
#
#  for x in $argv
#    set arg (string trim -- "$arg $x")
#  end
#
#  ag --nocolor -rl --md --ignore-dir tools $arg $dir | fzf | xargs less
#
#end

#alias nv "/usr/local/Cellar/neovim/0.2.2/bin/nvim"
#alias t "/usr/local/bin/tmux"
#alias td "/usr/local/bin/tmuxinator"
# alias sl "cd (fd -d 1 '.' /Users/shangwenmo/NAS/Drive/Dropbox/Logs | fzf)"

# alias issue "fd .md -a /Users/shangwenmo/Eleme/Issues/ | fzf | read -l result; and open \$result"
# alias note "fd .md -a /Users/shangwenmo/NAS/Drive/Logs/Notes/ | fzf | read -l result; and open \$result"
# alias schedule "fd .md -a /Users/shangwenmo/NAS/Drive/Logs/Schedules/ | fzf | read -l result; and open \$result"

# function sd
#   set arg ""
#
#   for x in $argv
#     set arg (string trim -- "$arg $x")
#   end
#
#   ag --nofilename --nocolor $arg /Users/shangwenmo/Documents/Dev/doc | fzf
# end

# function log
#   set name (date '+%Y-%m-%d')
#   set path /Users/shangwenmo/NAS/Drive/Logs/Daily/(date '+%Y-%m-%d').md
#
#   if test -e $path
#     open $path
#   else
#     echo $name > $path & open $path
#   end
#
# end

# export LSCOLORS=Gxfxcxdxbxegedabagacad
