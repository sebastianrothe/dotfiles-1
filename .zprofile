#
# Language
#

if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi

#
# Paths
#

# Ensure path arrays do not contain duplicates.
#typeset -gU cdpath fpath mailpath path

# Set the the list of directories that cd searches.
# cdpath=(
#   $cdpath
# )

# Set the list of directories that Zsh searches for programs.
path=(
  $(brew --prefix php)/bin
  /usr/local/opt/coreutils/libexec/gnubin
  /usr/local/{bin,sbin}
  $HOME/.yarn/bin
  $HOME/Library/Python/3.6/bin
  $HOME/Library/Android/sdk/{tools,tools/bin,platform-tools}
  $HOME/.jenv/bin
  $path
)

export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export GRADLE_HOME=/usr/local/bin
export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:$MANPATH

#
# Less
#

# Set the default Less options.
# Mouse-wheel scrolling has been disabled by -X (disable screen clearing).
# Remove -X and -F (exit if the content fits on one screen) to enable it.
export LESS='-F -g -i -M -R -S -w -X -z-4'

# Set the Less input preprocessor.
# Try both `lesspipe` and `lesspipe.sh` as either might exist on a system.
#if (( $#commands[(i)lesspipe(|.sh)] )); then
#  export LESSOPEN="| /usr/bin/env $commands[(i)lesspipe(|.sh)] %s 2>&-"
#fi

#
# Temporary Files
#

#if [[ ! -d "$TMPDIR" ]]; then
#  export TMPDIR="/tmp/$LOGNAME"
#  mkdir -p -m 700 "$TMPDIR"
#fi

#TMPPREFIX="${TMPDIR%/}/zsh"

# Homebrew
#export HOMEBREW_GITHUB_API_TOKEN=XXX
