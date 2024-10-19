function _git_branch_name
  echo (command git symbolic-ref HEAD 2> /dev/null | sed -e 's|^refs/heads/||')
end

function _is_git_dirty
  set -l show_untracked (git config --bool bash.showUntrackedFiles)
  set -l untracked
  if [ "$theme_display_git_untracked" = 'no' -o "$show_untracked" = 'false' ]
    set untracked '--untracked-files=no'
  end
  echo (command git status -s --ignore-submodules=dirty $untracked 2> /dev/null)
end

function fish_prompt
  set -l last_status $status
  set -l cyan (set_color -o cyan)
  set -l yellow (set_color -o yellow)
  set -l red (set_color -o red)
  set -l blue (set_color -o blue)
  set -l green (set_color -o green)
  set -l normal (set_color normal)
  set -l pink (set_color f0abfc)

  if test $last_status = 0
    set arrow "$green➜ "
  else
    set arrow "$red➜ "
  end
  set -l cwd $cyan(basename (prompt_pwd))

  # Git branch and dirty state
  set git_info ''
  set is_dirty 0
  if [ (_git_branch_name) ]
    set -l git_branch $pink(_git_branch_name)
    set git_info "$blue git:($git_branch$blue)"

    if [ (_is_git_dirty) ]
      set -l dirty "$yellow ✗"
      set git_info "$git_info$dirty"
      set is_dirty 1
    end
  end

  # If git is dirty, show arrow at the beginning
  if test $is_dirty = 1
    echo -n -s ' ' $arrow $cwd $git_info $normal ' '
  else
    # If git is not dirty, show arrow at the end
    echo -n -s ' ' $cwd $git_info ' '
    echo -n -s ' ' $arrow ' '
  end
end
