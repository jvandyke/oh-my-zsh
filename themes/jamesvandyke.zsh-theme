PROMPT='
%{$fg[green]%}%~ %{$fg_bold[white]%}$(git_prompt_info)$(git_prompt_status)
%{$fg_bold[green]%}➜ %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[black]%}• %{$fg_bold[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="" #" %{$fg[red]%}𝚫"
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[red]%} 𝚫"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ✭"

function rvm_info_for_prompt {
  if [ -f ".rvmrc" ]; then
    gemset=$(rvm current)
    echo "%{$fg_bold[black]%}• %{$fg_bold[black]%}$gemset%{$reset_color%}"
  fi
}
