function repository_fuzzy_matcher -d "Fuzzy matcher for moving directory"
  ghq list | fzf --reverse --preview "bat --color=always --style=header,grid --line-range :100 (ghq root)/{}/README.*" | read -l selected
  ghq root | read -l ghq_root
  [ -n "$selected" ]; and cd "$ghq_root/$selected"
  echo "$selected "
  commandline -f repaint
end
