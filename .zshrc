# My Zsh Config (Ditch Oh-my-zsh now!)
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=dbus
export QT_IM_MODULE=ibus # Get Ibus To Work
# Enable colors and change prompt:
autoload -U colors && colors

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/phantrungson/.zshrc'

# newline on prompt & git branch indicator
function precmd {
    if [[ "$NEW_LINE" = true ]] then
		print ""
    else
        NEW_LINE=true
    fi
	vcs_info
}
autoload -Uz vcs_info
alias clear='NEW_LINE=false && clear' # no preceeding newline after clear
zstyle ':vcs_info:git:*' formats '%b '

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%F{green}%n%f@%F{magenta}%m%f %F{blue}%1~ %B%F{cyan}${vcs_info_msg_0_}%B%F{blue}$ %f%b'
RPROMPT='%B%F{yellow}%t'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Basic auto/tab complete:
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

source ~/cuszsh/you-should-use/you-should-use.plugin.zsh 2>/dev/null
source ~/cuszsh/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
source ~/cuszsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source ~/cuszsh/git/git.zsh 
source ~/cuszsh/alias/alias.zsh 


# The auto completion
zmodload zsh/complist
compinit
_comp_options+=(globdots)

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
