# tmux
set -x TERM screen-256color

# anyenv path
set -g PATH $HOME/.anyenv/bin $PATH
. (anyenv init - | psub)
for D in pyenv rbenv
  set -x PATH $HOME/.anyenv/envs/$D/shims $PATH
end

# golang path
set -x GOPATH $HOME/dev
set -x PATH $PATH $GOPATH/bin

# neovim python
set -x NVIM_PYTHON_LOG_FILE /tmp/log
set -x NVIM_PYTHON_LOG_LEVEL DEBUG
set -x NVIM_RUBY_LOG_FILE /tmp/log
set -x NVIM_RUBY_LOG_LEVEL DEBUG

# nodebrew path
set -x PATH /usr/local/var/nodebrew/current/bin $PATH

# mysql path
set -g fish_user_paths "/usr/local/opt/mysql@5.6/bin" $fish_user_paths

# imagemagick path
set -g fish_user_paths "/usr/local/opt/imagemagick@6/bin" $fish_user_paths
