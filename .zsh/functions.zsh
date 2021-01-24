# Functions

# Color functions
function green { echo -e "\033[0;32m$1\033[0m"; }
function yellow { echo -e "\033[0;33m$1\033[0m"; }

# Extracts stuff
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2|*.tbz2)   tar xjf $1 --one-top-level                   ;;
      *.tar.gz|*.tgz)     tar xzf $1 --one-top-level                   ;;
      *.bz2)              bunzip2 $1                                   ;;
      *.rar)              unrar x -ad $1                               ;;
      *.gz)               gunzip $1                                    ;;
      *.tar|*.tar.xz)     tar xf $1 --one-top-level                    ;;
      *.Z)                uncompress $1                                ;;
      *.7z|*.zip)         7z x $1 -o$(echo $1 | sed -e 's/\.[^.]*$//') ;;
      *.deb)              ar x $1                                      ;;
      *.tar.zst)          unzstd $1                                    ;;
      *)                  echo "'$1' cannot be extracted."             ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# Archives
comp ()
{
  if [[ -f $1 ]] || [[ -d $1 ]] ; then
    tar -czvf $1.tar.gz $1
  else
    echo "No such file or directory '$1'"
  fi
}

compzip ()
{
  if [[ -f $1 ]] || [[ -d $1 ]] ; then
    zip -r $1.zip $1
  else
    echo "No such file or directory '$1'"
  fi
}

