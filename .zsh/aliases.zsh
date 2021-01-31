# Welcome to the alias hell!

# Push dots.
alias dots='bash ~/workspace/dots/dots.sh'

# cd
alias ..='cd ..' 
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# grep, but it has colors
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# youtube-dl
alias ytv="youtube-dl --recode-video mkv"
alias yta="youtube-dl --extract-audio --audio-format mp3"

# exa
alias ls='exa --color=always --group-directories-first'
alias lsal='exa -al --color=always --group-directories-first'
alias lsa='exa -a --color=always --group-directories-first'
alias lsl='exa -l --color=always --group-directories-first'
alias lst='exa -T --color=always --group-directories-first'
alias lsat='exa -aT --color=always --group-directories-first'
