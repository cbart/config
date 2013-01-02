
function parse_git_branch {
  git_status="$(git status 2> /dev/null)"
  pattern="^# On branch ([^${IFS}]*)"
  if [[ ! ${git_status}} =~ "working directory clean" ]]; then
    state="*"
  fi
  # add an else if or two here if you want to get more specific

  if [[ ${git_status} =~ ${pattern} ]]; then
    branch=${BASH_REMATCH[1]}
    echo "(${branch}${state})"
  fi
}


export PROMPT_COMMAND='PS1="[\`if [[ \$? = "0" ]]; then echo "\\[\\033[32m\\]"; else echo "\\[\\033[31m\\]"; fi\`\!\[\033[0m\]]\[\033[0;34m\]\u\[\033[0;30m\]@\[\033[0;32m\]\h\[\033[0;30m\]:\[\033[1;34m\]\`if [[ `pwd|wc -c|tr -d " "` > 18 ]]; then echo "\\W"; else echo "\\w"; fi\` \\[$(tput setaf 7)\\]\$(parse_git_branch)\\[$(tput sgr0)\\]\[\033[1;36m\]\$\[\033[0m\] "; echo -ne "\033]0;`hostname -s`:`pwd`\007"'
