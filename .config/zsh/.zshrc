# My Zsh Config (Ditch Oh-my-zsh now!)
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# The ufetch script
ufetch-arch

# Enable colors and change prompt:
autoload -U colors && colors

# Lines configured by zsh-newuser-install
HISTFILE=~/.cache/histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/phantrungson/.zshrc'

# Tab completion
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char
# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Use lf to switch directories and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^o' 'lfcd\n'

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# Aliases
for f in ~/.config/shellconfig/*; do source "$f"; done

#Plugs
source /usr/share/zsh/plugins/zsh-you-should-use/you-should-use.plugin.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2>/dev/null

setup_git_prompt() {
    if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
        unset git_prompt
        return 0
    fi

    local git_status_dirty git_status_stash git_branch

    if [ "$(git --no-optional-locks status --untracked-files='no' --porcelain)" ]; then
        git_status_dirty='%F{green}*'
    else
        unset git_status_dirty
    fi

    if [ "$(git stash list)" ]; then
        git_status_stash="%F{yellow}▲"
    else
        unset git_status_stash
    fi

    git_branch="$(git symbolic-ref HEAD 2>/dev/null)"
    git_branch="${git_branch#refs/heads/}"

    if [ "${#git_branch}" -ge 24 ]; then
        git_branch="${git_branch:0:21}..."
    fi

    git_branch="${git_branch:-no branch}"

    git_prompt=" %F{blue}[%F{253}${git_branch}${git_status_dirty}${git_status_stash}%F{blue}]"

}

precmd() {
    # Set optional git part of prompt.
    setup_git_prompt
}

# Prompt
PROMPT='%F{green}%n%f@%F{magenta}%m%f %F{blue}%B%~%b%f ${git_prompt} %# '

