# Suppress the default flat fish greeting string
set fish_greeting

if status is-interactive
    # Set proper terminal rendering context
    set -gx COLORTERM truecolor
    export QT_SCREEN_SCALE_FACTORS=1

    # Load custom pathing for user binaries (Cargo)
    fish_add_path ~/.cargo/bin

    # Run Fastfetch cleanly at terminal launch
    if type -q fastfetch
        fastfetch
    end

    # 1. Clean, Contextual Taskbook Agenda Dashboard
    if type -q tb
        echo -e "\n  [\e[1;34mCURRENT TASKS PROGRESS\e[0m]"
        echo -e "  ------------------------"
        # Pulls the metrics and indents them so they look like a distinct card layout
        tb --list pending | tail -n 2 | sed 's/^/  /'
        echo ""
    end

    # 2. Fire up Starship (This must sit cleanly at the bottom)
    starship init fish | source
end

function waybar-reload
    killall waybar
    setsid waybar & disown
end

# Global desktop alias overrides
alias fastfetch='fastfetch 2>/dev/null'

set -gx EDITOR 'zed --wait'
set -gx VISUAL 'zed --wait'

