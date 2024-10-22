set -g fish_greeting ""

source (dirname (status --current-filename))/aliases.fish 
for file in (dirname (status --current-filename))/functions/*
    source $file
end

if test (uname) = Darwin;
  eval "$(/opt/homebrew/bin/brew shellenv)"
end

thefuck --alias | source
zoxide init fish | source

