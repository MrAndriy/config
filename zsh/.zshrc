################################################
# PATH TO OH-MY-ZSH INSTALLATION
################################################
export ZSH="$HOME/.oh-my-zsh"

################################################
# THEME
################################################
ZSH_THEME="robbyrussell"


################################################
# UPDATE ZSH WITHOUT PROMPTING
################################################
DISABLE_UPDATE_PROMPT="true"

################################################
# UPDATE ZSH EVERY # DAYS
################################################
export UPDATE_ZSH_DAYS=7

#######################################################################
# Uncomment the following line to disable only plugin related aliases.
#######################################################################
DISABLE_OMZ_PLUGIN_ALIASES="true"


#######################################################################
# Uncomment the following line to disable all Oh My Zsh aliases.
DISABLE_OMZ_ALIASES="true"
#######################################################################


#######################################################################
# DISPLAY RED DOTS, WHILE WAITING FOR COMPLETION
#######################################################################
COMPLETION_WAITING_DOTS="true"

################################################
# PLUGINS
################################################
plugins=(
        git        
        docker
        docker-compose
        httpie
        npm
        zsh-autosuggestions
        zsh-completions
        zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

###############################################################################
# FONT COLOR FOR ZSH-AUTOSUGGESTIONS ADDON
###############################################################################
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=12'

#######################################################################
# Enable command filtering - start typing and press up or down arrows
# and you only go through commands that match the filter
#######################################################################
bindkey '\eOA' history-beginning-search-backward
bindkey '\e[A' history-beginning-search-backward
bindkey '\eOB' history-beginning-search-forward
bindkey '\e[B' history-beginning-search-forward  


################################################
# GENERIC ENVIRONMENT VARIABLES
################################################
export PATH=~/.local/bin:$PATH

################################################
# For NVM - node version manager
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
################################################


#################################################################################
# SHOULD BE LAST IN CONFIG | SOURCE FOR ZSH-SYNTAX-HIGHLIGHTING ADDON
#################################################################################
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#################################################################################
# Source Aliases from ~/.zsh_aliases file
#################################################################################
if [ -e $HOME/.zsh_aliases ]; then
    source $HOME/.zsh_aliases
fi

#################################################################################
