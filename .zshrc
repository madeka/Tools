#Add ls -G colors ohmyzsh color
export LSCOLORS=Gxfxcxdxbxegedabagacad

#Grep should always display color
export GREP_OPTIONS="--color=always"

#Add brew's formula path
export PATH=$HOME/.brew/bin:$PATH

#Add PAMP's binary path
export PATH=~/http/bin:$PATH

#ls will always be displayed in color
alias ls='ls -G'
