# dotfiles

my daily driver setup on Nobara — KDE Plasma with Waybar bolted on, Fish/Nushell,
and a custom "Glacier" theme (nordic-noir cyberpunk, if you want a label for it).

## setup
- OS: Nobara Linux, KDE Plasma (Waybar replacing the panels)
- shells: Fish day-to-day, Nushell when I want clean folder output
- term: Kitty, multiplexed with Zellij
- editor: Kate
- theme: Glacier — obsidian background, icy cyan/slate midtones, mint/yellow/red accents

## what's in here
- `fish/` — themes, plugins, functions
- `nushell/` — the nu-side config, mostly folder/file listing tweaks
- `kitty/` — padding, font scale, background tokens for the theme
- `cava/` — audio visualizer, colors mapped to match everything else
- `waybar/` — replaces Plasma's panels, uses the Glacier palette
- `user-dirs.dirs` — lowercase home layout (apps/, doc/, dl/, media/, scripts/, src/, tmp/)

## backups
`scripts/backup-dots.fish` wipes the old backup and re-pulls the tracked
config dirs. Uses `$HOME` throughout so nothing's hardcoded to my username.
