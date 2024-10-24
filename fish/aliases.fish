alias c "clear"
alias l "ls -l"
alias ll "ls -la"
alias la "ls -a"
alias lg "lazygit"
alias g "git"
alias gx "git reset --hard HEAD && git clean -fd"
alias t "tmux"
alias vim "nvim"
alias cd "z"


# In case I ever use Windows 
switch (uname)
  case Darwin
    alias ls "eza --icons=always"
  case Linux
    alias run-boot "sudo bash -x /mnt/suporte/scripts/boot.sh"
  case '*'
end


