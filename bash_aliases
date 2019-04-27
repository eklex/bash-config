alias ls='ls --color'
alias ll='ls -l'
alias la='ls -A'
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'''
alias lR="find ./ | sed -e 's/[^-][^\/]*\//--/g;s/--/ |-/'"
alias grep='grep --color=auto'
alias sall='grep -nriI'
alias 'cd..'='cd ..'
 
# GIT aliases
alias gh='git log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'
alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit '
alias gd='git diff --color '
alias go='git checkout '
alias gk='gitk --all&'
alias gx='gitx --all'
alias gw='git show '
alias gws='git show --name-status '
alias gds='gd --name-status '
alias gg='git grep '
 
# find text in any file
# ft text file
ft() {
    find . -name "$2" -exec grep -il "$1" {} \;
}
 
function bdiff() {
    sdiff <(xxd "$1") <(xxd "$2") -s
}

parse_git_branch() {
git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
 
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[01;31m\]$(parse_git_branch)\[\033[00m\]\$ '

