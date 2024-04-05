if status is-interactive
    # Commands to run in interactive sessions can go here
    
    # stop that pesky welcome message from showing it's face
    set fish_greeting

    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias neofetch='fastfetch'
    alias py='/bin/python'
    alias poweroff='systemctl poweroff'
    alias restart='systemctl reboot'
    alias hx='helix'
    alias catsay='cowsay -f sillycat'
    
    alias gprep='git add --all; git status'
    alias gsend='git commit && git push'
    alias gstat='git status'
    alias gcom='git commit'
    alias gadd='git add'
    alias gstow='gprep; gcom; stow --adopt .'
    
    alias sysup='flatpak update && yay'
    alias sysclean='pacman -Qtdq | sudo pacman -Rns -'
    alias sps='sudo pacman -S'

    function browse
        set method $argv[1]
        set query $argv[2]
        
        begin
            sr $method $query &
        end &> /dev/null
        
        set PIDstr (jobs --last)
        echo PID: $PIDstr
        set PID (string sub -s 9 -l 6 $PIDstr)
        echo PID: $PID
        sleep 0.5
        disown $PID
        exit

        #im fucking tired of trying to get this to work
        #fix later
    end

    # launch zoxide (cd replacement) and overwrite cd with an alias
    eval "$(zoxide init --cmd cd fish)"
    
    # Custom environment variables (PATH)
    ./.env-var-setter
    
    # custom lil text (and neofetch of course)
    echo ------- Welcome to Arch Linux! -------
    echo
    fastfetch
    echo TODO:
    echo '- Make GRUB pretty'
    echo '- Set up /.dotfiles'
    echo '- Stop bluetooth from cutting out'
end
