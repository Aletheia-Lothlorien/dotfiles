#
# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

export CABAL_PATH="/home/akhi/.cabal/bin/"
export CARGO_PATH="/home/akhi/.cargo/bin/"
export RUST_SRC_PATH="/home/akhi/.multirust/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src/"
export GOPATH="/home/akhi/Documents/Code/Go/"
export NIM_PATH="/home/akhi/programs/nim/nim-0.16.0/bin/"
export FZF_PATH="/home/akhi/.fzf/bin"
export FACTOR_ROOTS="/home/akhi/Documents/Code/factor"
export PONY_PATH="/opt/ponyc/build/release"
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
export SCALA_HOME="/usr/share/scala-2.11"
export PERL6_PATH=( /opt/rakudo-star-2017.01/bin /opt/rakudo-star-2017.01/share/perl6/site/bin )

path=(
    /usr/local/go/bin/
    $FZF_PATH
    $GOPATH
    $CARGO_PATH
    $RUST_SRC_PATH
    $NIM_PATH
    /home/akhi/Documents/Code/Go/bin/
    /home/akhi/anaconda3/bin/
    /home/akhi/bin/
    /home/akhi/.local/bin
    /usr/local/sbin/
    /usr/local/bin/
    /usr/sbin/
    /usr/bin/
    /sbin/
    /bin/
    $CABAL_PATH
    $FACTOR_ROOTS
    $PONY_PATH
    $JAVA_HOME
    $SCALA_HOME
    $PERL6_PATH
)

export path

fpath=(/home/akhi/bin/functions $fpath)
export fpath
autoload ${fpath[1]}/*(:t)

export MANPATH="$MANPATH:/home/akhi/.fzf/man"

export EDITOR="emacsclient -n"
export ALTERNATE_EDITOR=""
export VISUAL="nvim"
