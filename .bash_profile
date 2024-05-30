alias ls='ls -lh'
alias exit='pwd; exit'
alias ipython='python -m IPython'

alias goia='cd /Users/Jake/Desktop/career/improvingaviation/'
alias updatejr='rsync -avz /Users/Jake/jakerosedotlife/var/www/htdocs jake@jakerose.life:/var/www/'
alias updatedy='rsync -avz /Users/Jake/career/DevelopYoursWebsite/htdocs jake@developyours.com:/var/www/'
alias updatecele='rsync -avz /Users/Jake/celebratethislife/var/www/htdocs jake@155.138.227.189:/var/www/'
alias dyweb='cd /Users/Jake/career/DevelopYoursWebsite/htdocs'
alias gocodechallenge='cd /Users/Jake/programming/practice/coding-challenges/pythonprinciples'
alias gojakerosedotlife='cd /Users/Jake/jakerosedotlife/var/www/htdocs'
alias gocelebratethislife='cd /Users/Jake/celebratethislife/var/www/htdocs'
alias thesis="cd /Users/Jake/Desktop/uf/research/theses/PhD-Thesis"

# For funzies
alias MLUdemy="cd /Users/Jake/python_for_data_scientists/Python-Data-Science-and-Machine-Learning-Bootcamp"
alias MLCoursera="cd /Users/Jake/MachineLearningCoursera/"
alias GRG="cd /Users/Jake/modsim/rosenzweigj_phz5155_2018/theGRGmethod/jakes_thegrgmethod_repo/"
alias CMSsummerschool="cd /Users/Jake/Desktop/Research/CMS_Office_Hours/"

#____ NEW COMMANDS ____#
function fullpath {
    echo "`pwd`/${1}"
}

function copyfromhpg {
    scp rosedj1@gator.rc.ufl.edu:$* .;
}

function eval19248 {
    eval `utils/tdr runtime -sh`;
}

openrootfile() {
    scriptpath="/Users/Jake/programming/rootutils/openrootfile.py"
    if [ $# -eq 1 ]; then
        # Infile.
        ipython -i ${scriptpath} -- -f ${1}
    elif [ $# -eq 2 ]; then
        # Infile, treepath.
        ipython -i ${scriptpath} -- -f ${1} -t ${2}
    elif [ $# -eq 3 ]; then
        # Infile, treepath, and verbose.
        ipython -i ${scriptpath} -- -f ${1} -t ${2} ${3}
    fi
}

# Prompt shows current location within file structure.
NDIRS=3
export PS1='\[\e[1;31m\]\h:\[\e[1;35m\]`echo $PWD | grep -E -o "(/[^/]*){\$NDIRS}$" | sed "s|$|/|"`$ \[\e[00m\]'

# Modify the Bash prompt to show the git branch you're on
# Slightly modified from: https://coderwall.com/p/fasnya/add-git-branch-name-to-bash-prompt
# Show current git branch in command line
#parse_git_branch() {
#    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/';
#}
#export PS1="rosedj1:\W\$ "
#export PS1="\[\e[1;31m\]\u@\h\[\e[00m\] on \[\e[1;32m\]`parse_git_branch`\[\e[00m\]: \[\e[1;35m\]\W~$ \[\e[00m\]"
#export PS1="\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\]$ "
#export PS1="\[\e[1;31m\]\u:\[\e[1;35m\]\W~$ \[\e[00m\]"

export CLICOLOR=1
#export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export LS_COLORS='di=34:fi=33:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'

### Alternatively use this color scheme:
### gxBxhxDxfxhxhxhxhxcxcx
# a     black
# b     red
# c     green
# d     brown
# e     blue
# f     magenta
# g     cyan
# h     light grey
# A     bold black, usually shows up as dark grey
# B     bold red
# C     bold green
# D     bold brown, usually shows up as yellow
# E     bold blue
# F     bold magenta
# G     bold cyan
# H     bold light grey; looks like bright white
# x     default foreground or background


####################################################
#=== THE SETTINGS BELOW ARE FOR A LINUX MACHINE ===#
####################################################
# alias ls='ls --color'
# alias ls='colourify ls --color'
# LS_COLORS='di=34:fi=33:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
# LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'

##### Colors #####
# 0   = default colour
# 1   = bold
# 4   = underlined
# 5   = flashing text
# 7   = reverse field

# 31  = red
# 32  = green
# 33  = orange
# 34  = blue
# 35  = purple
# 36  = cyan
# 37  = grey

# 40  = black background
# 41  = red background
# 42  = green background
# 43  = orange background
# 44  = blue background
# 45  = purple background
# 46  = cyan background
# 47  = grey background

# 90  = dark grey
# 91  = light red
# 92  = light green
# 93  = yellow
# 94  = light blue
# 95  = light purple
# 96  = turquoise

# 100 = dark grey background
# 101 = light red background
# 102 = light green background
# 103 = yellow background
# 104 = light blue background
# 105 = light purple background
# 106 = turquoise background

##### Types of Files #####
# di = directory
# fi = file
# ln = symbolic link
# pi = fifo file
# so = socket file
# bd = block (buffered) special file
# cd = character (unbuffered) special file
# or = symbolic link pointing to a non-existent file (orphan)
# mi = non-existent file pointed to by a symbolic link (visible when you type ls -l)
# ex = file which is executable (ie. has 'x' set in permissions).

# added by Anaconda3 5.0.1 installer
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/Users/Jake/.vimpkg/bin:/usr/local/texlive/2018/bin/x86_64-darwin":$PATH

# Setting PATH for Python 3.11
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.11/bin:${PATH}"
export PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/Jake/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/Jake/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/Jake/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/Jake/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

