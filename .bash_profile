# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH";

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Add tab completion for many Bash commands
[ -f $(brew --prefix)/etc/bash_completion ] && source $(brew --prefix)/etc/bash_completion

# fzf : command line fuzzy finder
[ -f ~/.fzf.bash ] && source ~/.fzf.bash


[ -f "${HOME}/.iterm2_shell_integration.bash" ] && source "${HOME}/.iterm2_shell_integration.bash"

# Git
source /usr/local/opt/git/etc/bash_completion.d/git-completion.bash
source /usr/local/opt/git/etc/bash_completion.d/git-prompt.sh

# Node version manager
export VOLTA_HOME=$HOME/.volta
export PATH="$VOLTA_HOME/bin:$PATH"

# GCloud utility
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc'

# default java version
setjdk 17

# servio
export SERVIO_LOCATION='/Users/mbigorne/projects/servio'
export SERVIO_ANNOUNCEMENTS_LOCATION='/Users/mbigorne/projects/servio-announcements'
export USERNAME='mbigorne'
export COMMANDEXECUTOR_ENABLED=false # Disable JobEx jobs

source ${SERVIO_LOCATION}/tools/dotfiles/.servio.sh

export USE_GKE_GCLOUD_AUTH_PLUGIN=True # voir https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke
