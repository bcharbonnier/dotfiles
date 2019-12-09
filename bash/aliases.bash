# List directory contents
alias ls='ls -G'        # Compact view, show colors
alias la='ls -AF'       # Compact view, show hidden
alias ll='ls -al'
alias l='ls -a'
alias l1='ls -1'
alias mkdir='mkdir -pv'

# Flush your dns cache
alias flush='dscacheutil -flushcache'

# Get rid of those pesky .DS_Store files recursively
alias dsclean='find . -type f -name .DS_Store -delete'

# Start a local webserver
#alias serve="python -m SimpleHTTPServer"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Show/hide desktop icons
alias present="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias present!="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# reload config
alias reload!='source ~/.bash_profile'
