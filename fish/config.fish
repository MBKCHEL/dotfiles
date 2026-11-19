if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -x QT_QPA_PLATFORMTHEME qt6ct

fish_add_path $HOME/.spicetify

fish_add_path $HOME/.local/bin
fish_add_path $HOME/.cargo/bin

sysprint

# alias
alias v="nvim"
alias cbr="cargo build --release"
alias cr="cargo run"
alias cb="cargo build"
alias gc="git commit"
alias ga="git add"
alias gst="git status"
alias gp="git push"
alias cc="cargo check"
alias nv="nvibrant"

# fn take from Oh My Zsh
function take
    mkdir -p $argv[1] && cd $argv[1]
end

