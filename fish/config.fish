set -g fish_greeting ""

source (dirname (status --current-filename))/aliases.fish 
for file in (dirname (status --current-filename))/functions/*
    source $file
end

eval "$(/opt/homebrew/bin/brew shellenv)"

thefuck --alias | source
zoxide init fish | source

