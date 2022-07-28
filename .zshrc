# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && . "$HOME/.fig/shell/zshrc.pre.zsh"
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH. export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="/Users/gabrielvr/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="powerlevel01k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

ZSH_DISABLE_COMPFIX=true

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    colors
    zsh-history-enquirer
    zsh-autosuggestions
    zsh-syntax-highlighting
    macos
    autojump
    sudo
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=es_ES.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# Prompt colors

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color


# Custom Aliases

alias zshconfig="vim ~/.zshrc"
alias dev="cd ~/dev"
alias express="express-cli-generator"
alias rmds="sudo python3 /Users/gabrielvr/dev/dsstore-deleter/main.py /"
alias cat="bat"
alias ls="lsd"
alias update="bash ~/dev/shell-scripts/update.sh"
alias eman="tldr"
alias spt="speed-test -v"
alias clh="history -c"
alias sql="mycli -u gabriel -ppreagaser"
alias dump="sh ~/dev/db-data-extractor/script.sh"
alias dmgi="sh ~/dev/dmg-installer/script.sh"
alias cra="npx create-react-app"
alias h="howdoi -c"
alias top="vtop"
alias 2048="sh ~/dev/bash-2048/bash2048.sh"

export daw="cd ~/DAW" 
export bd="cd ~/DAW/Bases de datos" # Base de datos
export en="cd ~/DAW/Entornos de desarrollo" # Entornos de desarrollo
export pr="cd ~/DAW/Programación" # Programación
export sin="cd ~/DAW/Sistemas informaticos" # Sistemas informáticos
export fo="cd ~/DAW/FOL" # FOL
export ing="cd ~/DAW/Inglés" # Inglés

alias vpn="openvpn ~/VPN/vpnbook-pl226-tcp443.ovpn"

# Git aliases

alias gcl="git clone"
alias ga="git add ."
alias gs="git status -s"
alias gcm="git commit -m"
alias gp="git push"

# Spotify aliases

alias sp="spotify"
alias spp="spotify play"
alias sppa="spotify pause"
alias spn="spotify next"
alias sppr="spotify prev"
alias spv="spotify volume"
alias spm="spotify mute"
alias spr="spotify toggle repeat"
alias sps="spotify toggle shuffle"
alias spst="spotify status"
 
# Clear DNS Cache

alias cld="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder; echo 'DNS Cache cleaned'"
# Get IP
alias ip="curl icanhazip.com"

# Custom comands at launch

clear

# Display last login info

LAST_LOGIN="$(last -tty gabrielvr | head -n 1 | cut -b 38-53)"
echo -e "$c[green][ ⫸ ] Last login - $c[reset]${LAST_LOGIN}"

# Display private IP

IP="$(ifconfig | grep "inet " | tr " " ":" | cut -d: -f2 | tail -n1)"
echo -e "$c[green][ ⫸ ] Private IP - $c[reset]${IP}"

# Display weather

WEATHER="$(ansiweather -l Elche,ES -a false -w false -h false -H false -p false -i false | cut -b 13-25)"
echo -e "$c[green][ ⫸ ] Weather - $c[reset]${WEATHER}"

# Display fortune and cowsay

COWSAY="$(fortune -s | cowsay -f tux)"
echo -e "$c[green]${COWSAY}$c[reset]"
echo

source /Users/gabrielvr/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


setopt prompt_subst

# Display time 

RPROMPT="%{$c[green]%}( %D{%H:%M:%S} )%{$c[reset]%}"


# Cowsay cowfiles path

export COWFILES="/opt/homebrew/Cellar/cowsay/3.04_1/share/cows"

# Custom functions

# Create dev working directory
function mkd(){
mkdir -p $1/public 2>/dev/null
if [ -d "$1/public" ];then
	touch $1/public/index.html 2>/dev/null
	touch $1/public/style.css 2>/dev/null
	touch $1/public/app.js 2>/dev/null
	echo "$c[green]Directory $1 created successfully$c[reset]"
else
	echo "$c[red]Error creating directory $1 $c[reset]"
fi
if [$2 == "node"];then
 npm init -y --silent
echo "nodejs project created successfully"
fi

}
# zsh autosuggestions config

AS_COLOR="#015c01"
AS_WEIGHT="bold"
AS_DECORATION="underline"

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=${AS_COLOR},${AS_WEIGHT},${AS_DECORATION}"
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && . "$HOME/.fig/shell/zshrc.post.zsh"
