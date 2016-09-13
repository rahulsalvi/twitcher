if [[ ! "$PATH" == *${TWITCHER_DIR:-$HOME}/.twitcher/scripts* ]]; then
    export PATH="$PATH:${TWITCHER_DIR:-$HOME}/.twitcher/scripts"
fi

# Open a twitch stream in VLC using FZF to select
function twitcher() {
    twitcher-display | $(__fzfcmd) -m $FZF_TWITCHER_OPTS | twitcher-open
}

zle     -N     twitcher
bindkey '\et'  twitcher
