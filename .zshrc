# alias
alias ll='ls -la'
alias la='ls -la'
alias dc='docker-compose'
alias x86='arch -x86_64 zsh'

# git diff-highlight
export PATH="$PATH:/opt/homebrew/share/git-core/contrib/diff-highlight"

# git
source ~/.zsh/git-prompt.sh
fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
autoload -Uz compinit && compinit

GIT_PS1_SHOWDIRTYSTATE=true  # ファイル変更の有無
GIT_PS1_SHOWUNTRACKEDFILES=true  # 新規ファイルの有無
# GIT_PS1_SHOWSTASHSTATE=true  # スタッシュの有無
# GIT_PS1_SHOWUPSTREAM=auto  # HEADとそのアップストリームの違い

ARCH=`uname -m`
setopt PROMPT_SUBST ; PS1='%F{green}${ARCH} %F{white}%m%f:%c%F{red}$(__git_ps1 "[%s]")%f\$ '
