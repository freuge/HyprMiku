fish_vi_key_bindings
if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -U fish_greeting
thefuck --alias | source
starship init fish | source
source ~/.config/fish/aliases.fish
source ~/.config/fish/ffmpeg.fish
source ~/.config/fish/env.fish
zoxide init fish | source
zoxide init --cmd cd fish | source
alias cdi="zi"
function r
    set tmp (mktemp -t "ranger-cwd.XXXXXX")
    ranger --choosedir="$tmp" $argv
    if test -f "$tmp"
        set dir (cat "$tmp")
        if test -d "$dir"
            cd "$dir"
        end
        rm -f "$tmp"
    end
end
set -x GEMINI_API_KEY ""
