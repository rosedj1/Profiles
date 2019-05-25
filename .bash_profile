# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs

# export SCRAM_ARCH=slc5_amd64_gcc472
# export OSG_APP=/raid/osgpg/pg/app
# export VO_CMS_SW_DIR=${OSG_APP}/cmssoft/cms
# export CMS_PATH=${VO_CMS_SW_DIR}
# export EXTERNAL=${CMS_PATH}/${SCRAM_ARCH}/external
# export LCG=${CMS_PATH}/${SCRAM_ARCH}/lcg
# export PATH=$ROOTSYS/bin:${EXTERNAL}/gcc/4.3.4/bin:${PATH};
# source ${CMS_PATH}/cmsset_default.sh
# export CVSROOT=:pserver:anonymous@cmscvs.cern.ch:/local/reps/CMSSW
# export LD_LIBRARY_PATH=/lib64:$LD_LIBRARY_PATH
# OSG_LOCATION=/raid/osgpg/pg/osg

# Justin added for SLC6

parse_git_branch() {      
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'; 
}

#export PS1="rosedj1:\W\$ "
#export PS1="\[\e[1;31m\]\u@\h\[\e[00m\] on \[\e[1;32m\]`parse_git_branch`\[\e[00m\]: \[\e[1;35m\]\W~$ \[\e[00m\]"
#export PS1="\[\e[1;31m\]\u@\h:\[\e[1;35m\]\W~$ \[\e[00m\]"
NDIRS=3
export PS1='\[\e[1;31m\]\h:\[\e[1;35m\]`echo $PWD | grep -E -o "(/[^/]*){\$NDIRS}$" | sed "s|$|/|"`$ \[\e[00m\]'
export SCRAM_ARCH=slc6_amd64_gcc530
export VO_CMS_SW_DIR=/cvmfs/cms.cern.ch
. $VO_CMS_SW_DIR/cmsset_default.sh

# alias cdBoZ="cd /home/bregnery/BoostedZ/CMSSW_8_0_9/src/BoostedZ"
# alias cdStore="cd /cms/data/store/user/bregnery"
# alias cdPy="cd /home/bregnery/PythonModules/CMSSW_8_0_20/src/PythonModulesForCMSfits"

# alias darkZ="cd /home/rosedj1/CMSSW_9_4_2/src"
# alias darkZpatch="cd /home/rosedj1/analysis_9_4_0_patch1/CMSSW_9_4_0_patch1/src/DarkZ-EvtGeneration/"
LS_COLORS='di=34:fi=33:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'
# LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rpm=90'

# Damn core dumps!
ulimit -c 0
# Damn stack size!
ulimit -s unlimited

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

export LS_COLORS

export PATH=/cvmfs/cms.cern.ch/common:/cvmfs/cms.cern.ch/bin:/usr/lib64/qt-3.3/bin:/usr/local/bin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:/home/rosedj1/.vimpkg/bin

alias ls='ls -lhv --color'
alias tophead="top -b | head -n 30"
alias exit='pwd; exit'

alias public="cd /home/rosedj1/public_html"
alias macros="cd /raid/raid7/rosedj1/DarkZ/macros/"
alias DavidHelpMe="cd /home/rosedj1/DavidsTutorials/"
alias HelpKun="cd /home/kshi/SUSY/CMSSW_8_0_25/src/"

alias raid5="cd /raid/raid5/rosedj1/"
alias raid6="cd /raid/raid6/rosedj1/"
alias raid7="cd /raid/raid7/rosedj1/"
alias raid8="cd /raid/raid8/rosedj1/"
alias raid9="cd /raid/raid9/rosedj1/"
alias freshcmssw8010="cd /home/rosedj1/CleanCMSSWenvironments/CMSSW_8_0_10/src/; cmsenv; cd -"
alias freshcmssw942="cd /home/rosedj1/CleanCMSSWenvironments/CMSSW_9_4_2/src/; cmsenv; cd -"

alias DarkZLiteAna="cd /home/rosedj1/UFPyNTupleRunner/CMSSW_9_4_4/src/DarkZLiteAnalyzer/"
alias UFHZZ4lAna="cd /home/rosedj1/UFHZZAnalysisRun2/CMSSW_9_4_2/src/"

alias DarkZevtgen931="cd /home/rosedj1/DarkZ-EvtGeneration/CMSSW_9_3_1/src/DarkZ-EvtGeneration"
alias DarkZevtgen942="cd /home/rosedj1/DarkZ-EvtGeneration/CMSSW_9_4_2/src/DarkZ-EvtGeneration"
alias MadGraph="cd /home/rosedj1/DarkZ-EvtGeneration/CMSSW_9_4_2/src/DarkZ-EvtGeneration/genproductions/bin/MadGraph5_aMCatNLO"
alias JHUGen="cd /home/rosedj1/DarkZ-EvtGeneration/CMSSW_9_4_2/src/DarkZ-EvtGeneration/genproductions/bin/JHUGen"
alias POWHEG="cd /home/rosedj1/DarkZ-EvtGeneration/CMSSW_9_4_2/src/DarkZ-EvtGeneration/genproductions/bin/Powheg"
alias PlayWithMG="cd /home/rosedj1/DarkZ-EvtGeneration/CMSSW_9_4_2/src/DarkZ-EvtGeneration/genproductions/bin/MadGraph5_aMCatNLO/all_ppToZZd_cards/ppToZZd_cards_eps1e-2_MZD15/HAHM_variablesw_v3/HAHM_variablesw_v3_gridpack/work/"

alias genprod="cd /home/rosedj1/genproductions/genproductions/bin/MadGraph5_aMCatNLO/cards/production/2017/13TeV/Higgs/HToZZdTo4L_M125_MZd20_eps1e-2_13TeV_madgraph_pythia8/"
alias pregenprod="cd /home/rosedj1/genproductions/genproductions/bin/MadGraph5_aMCatNLO/cards/production/pre2017/13TeV/Higgs/HToZZdTo4L_M125_MZd20_eps1e-2_13TeV_madgraph_pythia8/"

alias genZdZdPROBDELETETHISALIAS="cd /home/rosedj1/genproductionsLucien/genproductions/bin/MadGraph5_aMCatNLO/"
alias ZdNTupleDELETETHISALIAS="cd /home/rosedj1/analysis_9_4_0_patch1/CMSSW_9_4_0_patch1/src/DarkZ-EvtGeneration/DarkZ-NTuple/"

alias prepUFNTuple="PyNTuple; cmsenv; source setup.sh; voms-proxy-init -voms cms --valid=168:00"
alias PyNTuple="cd /home/rosedj1/UFPyNTupleRunner/CMSSW_9_4_4/src/UF-PyNTupleRunner"
alias Significance="cd /home/rosedj1/UFPyNTupleRunner/CMSSW_9_4_4/src/UF-PyNTupleRunner/HToZdZd/Significance/"
alias HZZLiteAna='cd /home/rosedj1/UFPyNTupleRunner/CMSSW_9_4_4/src/UFHZZLiteAnalyzer/'

alias Higgs8010="cd /home/rosedj1/HiggsMeasurement/CMSSW_8_0_10/src/"
alias Higgs8032="cd /home/rosedj1/HiggsMeasurement/CMSSW_8_0_32/src/"
alias Higgs1025="cd /home/rosedj1/HiggsMeasurement/CMSSW_10_2_5/src/"
alias HiggsPlots="cd /home/rosedj1/public_html/Higgs/HiggsMassMeas/"

function fullpath { 
    echo "`pwd`/${1}" 
}
