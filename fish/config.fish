set -g fish_greeting ""
fish_config prompt choose arrow

# function fish_prompt
#
# end

source (dirname (status --current-filename))/aliases.fish 

thefuck --alias | source
zoxide init fish | source
