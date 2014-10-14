alias reload!='. ~/.zshrc'

alias flushdns="dscacheutil -flushcache"

alias powlog="cd ~/Library/Logs/Pow/apps/"
alias be="bundle exec"

# rails 3 shortcut 'r'
alias tdl='tail -f ./log/development.log'
alias ttl='tail -f ./log/test.log'
alias ctl='> ./log/test.log'
alias cdl='> ./log/development.log'
alias guard='nocorrect guard'
alias resetsound='sudo kextunload /System/Library/Extensions/AppleHDA.kext; sudo kextload /System/Library/Extensions/AppleHDA.kext'
alias hidedesktop='defaults write com.apple.finder CreateDesktop false; killall Finder'
alias showdesktop='defaults write com.apple.finder CreateDesktop true; killall Finder'

# launching console/server
sc () {
  if [ -f ./script/rails ]; then
    rails c $@
  else
    ./script/console $@
  fi
}

sg () {
  if [ -f ./script/rails ]; then
    rails g $@
  else
    ./script/generate $@
  fi
}

ss () {
  if [ -f ./script/rails ]; then
    rails s $@
  else
    ./script/server $@
  fi
}
