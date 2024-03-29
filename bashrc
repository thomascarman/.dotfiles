function trunc_pwd() {
	max_pwd=30
  if [ $(echo $(pwd) | sed -e "s_${HOME}_~_" | wc -c | tr -d " ") -gt $max_pwd ]
  then
    newPWD="...$(echo $(pwd) | sed -e "s_${HOME}_~_" | sed -e "s/.*\(.\{$max_pwd\}\)/\1/")"
  else
    newPWD="$(echo $(pwd) | sed -e "s_${HOME}_~_")"
  fi
}

PROMPT_COMMAND=trunc_pwd

if test -f /etc/profile.d/git-sdk.sh
then
	TITLEPREFIX=SDK-${MSYSTEM#MINGW}
else
	TITLEPREFIX=$MSYSTEM
fi

if test -f ~/.config/git/git-prompt.sh
then
	. ~/.config/git/git-prompt.sh
else
	PS1='\[\033]0;$TITLEPREFIX:$PWD\007\]' # set window title
	PS1="$PS1"'\n'                  # new line
	PS1="$PS1"'\[\033[32m\]'       	# change to green
	PS1="$PS1"'\h '       	        # Hostname
	PS1="$PS1"'\[\033[33m\]'      	# change to brownish yellow
	PS1="$PS1"'$newPWD'                 	# current working directory
	if test -z "$WINELOADERNOEXEC"
	then
		GIT_EXEC_PATH="$(git --exec-path 2>/dev/null)"
		COMPLETION_PATH="${GIT_EXEC_PATH%/libexec/git-core}"
		COMPLETION_PATH="${COMPLETION_PATH%/lib/git-core}"
		COMPLETION_PATH="$COMPLETION_PATH/share/git/completion"
		if test -f "$COMPLETION_PATH/git-prompt.sh"
		then
			. "$COMPLETION_PATH/git-completion.bash"
			. "$COMPLETION_PATH/git-prompt.sh"
			PS1="$PS1"'\[\033[36m\]'  # change color to cyan
			PS1="$PS1"'`__git_ps1`'   # bash function
		fi
	fi
	PS1="$PS1"'\[\033[0m\]'        # change color
	PS1="$PS1"' \T '                 # Time
	PS1="$PS1"'\n'                 # new line
	PS1="$PS1"'\[\033[35m\]'       	# change to purple
	PS1="$PS1"'$ '                 # prompt: always $
	PS1="$PS1"'\[\033[0m\]'      	# change to brownish yellow
fi

MSYS2_PS1="$PS1"               # for detection by MSYS2 SDK's bash.basrc

# Evaluate all user-specific Bash completion scripts (if any)
if test -z "$WINELOADERNOEXEC"
then
	for c in "$HOME"/bash_completion.d/*.bash
	do
		# Handle absence of any scripts (or the folder) gracefully
		test ! -f "$c" ||
		. "$c"
	done
fi

if [ -e $HOME/.bash_aliases ]; then
	source $HOME/.bash_aliases
fi

if [ -e $HOME/.bash_functions ]; then
	source $HOME/.bash_functions
fi

function diary () {
    dt=$(date +%Y-%m-%d)
    output="$HOME/.vault/docs/diary/$dt.md"
    vim "$output"
}

alias bashconfig="vim ~/.bashrc"
alias vimconfig="vim ~/.vimrc"
alias dotfiles="cd ~/.dotfiles"
alias ll="ls -la"
alias calendar="vim -c \"Calendar\""
alias notes="cd ~/.vault/docs && vim index.md"
alias sql="winpty sqlite3"
alias sqlite="winpty sqlite3"
alias sqlite3="winpty sqlite3"
alias xp="explorer.exe"
alias nvim="winpty nvim"
alias lazygit="winpty lazygit"

# ~/.dotfiles/message.sh
