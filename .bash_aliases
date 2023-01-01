#alias ls="ls -G"
#alias ll="ls -lh"
alias ls="exa --header -s size"
alias ll="exa -l --header -s size"

alias sp="/usr/local/bin/spotify"
alias mytop="glances -4 -2 --disable-bg --disable-process --disable-webui --process-short-name" 
alias nasm="/usr/local/bin/nasm"
alias mymsg1="echo '...' | cowsay -f eyes | toilet --metal -f term"
alias mymsg2="echo '...' | cowsay -f eyes | lolcat"

alias vmsavestate="VBoxManage controlvm Xploit savestate"
alias vmstop="VBoxManage controlvm Xploit poweroff"
alias vmstart="VBoxManage startvm Xploit --type=headless"

#### TMUX SIMPLE

alias tmuxx="tmux new -d -s Simple
tmux rename-window main
tmux split-window -v
tmux resize-pane -U 10
tmux set pane-border-indicators both
tmux select-pane -t 0 -T "top"
tmux select-pane -t 1 -T "main"

tmux select-pane -t 0
tmux send-keys 'htop'
tmux send-keys ENTER
tmux select-window -t 1
tmux select-pane -t 1
tmux attach -t Simple
"

#### TMUX WORK

alias tmuxwork="tmux new -d -s Work
tmux rename-window main
tmux split-window -v
tmux resize-pane -U 10
tmux set pane-border-indicators both
tmux select-pane -t 0 -T "top"
tmux select-pane -t 1 -T "main"

tmux select-pane -t 0
tmux send-keys 'htop'
tmux send-keys ENTER

tmux new-window -d -n devel@xploit -t 2 ssh vboxuser@xploit
tmux new-window -d -n debug@xploit -t 3 ssh vboxuser@xploit

tmux select-window -t 1
tmux select-pane -t 1
tmux attach -t Work
"
