alias mkdir='mkdir -pv'

# Flush your dns cache
alias flush='dscacheutil -flushcache'

# Get rid of those pesky .DS_Store files recursively
alias dsclean='find . -type f -name .DS_Store -delete'

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Show/hide desktop icons
alias present="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias present!="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# reload config
alias reload!='. ~/.zshrc'
