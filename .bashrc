# Color variables
RED='\[\e[0;31m\]'
GREEN='\[\e[0;32m\]'
YELLOW='\[\e[0;33m\]'
BLUE='\[\e[0;34m\]'
MAGENTA='\[\e[0;35m\]'
CYAN='\[\e[0;36m\]'
RESET='\[\e[0m\]'

# Customize the prompt
PS1="${GREEN}\u${RESET}@${BLUE}\h ${YELLOW}\w${RESET}\n\$ "

# Configure ls to be colorized
export LS_OPTIONS='--color=auto'
eval "$(dircolors)"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'

# Define color aliases for specific binaries
alias my_binary1="${RED}my_binary1${RESET}"
alias my_binary2="${YELLOW}my_binary2${RESET}"
alias my_binary3="${MAGENTA}my_binary3${RESET}"

# Other aliases (uncomment as needed)
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'

# Add a custom greeting message when opening a new terminal
echo -e "${CYAN}Welcome to your terminal!${RESET}"

# Change the title of your terminal window/tab
title() {
    echo -ne "\033]0;$1\007"
}

# Set the terminal title to something custom (replace "My Terminal" with your desired title)
title "My Terminal"

# Set a custom prompt for the root user (with a red # symbol)
if [ $(id -u) -eq 0 ]; then
    PS1="${RED}\u${RESET}@${BLUE}\h ${YELLOW}\w${RESET}\n#${RESET} "
fi

cls() {
    clear
    ls
}