function __ghq_cd_repository -d "Change local repository directory"
  ghq list --full-path | fzf --reverse | read -l repo_path
  cd $repo_path
end
alias ghf __ghq_cd_repository
