# using fnm instead of nvm.fish
# https://github.com/Schniz/fnm
# install: brew install fnm

fnm env --use-on-cd | source
alias nvm="fnm"
