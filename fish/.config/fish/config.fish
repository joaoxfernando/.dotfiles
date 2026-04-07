if status is-interactive

function fish_prompt -d "Write out the prompt"
    # This shows up as USER@HOST /home/user/ >, with the directory colored
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
    printf '%s@%s@%s%s%s > ' $USER $hostname \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

  and not set -q TMUX
  and set -q ALACRITTY_WINDOW_ID
  tmux attach-session -t fish; or tmux new-session -s fish

end

