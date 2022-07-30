# Add home Applications folder 
export PATH=$HOME/bin:$HOME/Applications:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/trespitt/.oh-my-zsh"

read -d '' welcome_msg << EOF
#     # ####### ######  ####### #         ###
##    # #     # #     # #       #    #   #   #
# #   # #     # #     # #       #    #  #     #
#  #  # #     # #     # #####   #    #  #     #
#   # # #     # #     # #       ####### #     #
#    ## #     # #     # #            #   #   #
#     # ####### ######  #######      #    ###
EOF

# display company welcome message on startup
echo "$welcome_msg"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=1

plugins=(git brew)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

export EDITOR='vim'

### MISC
alias v="vim"
alias sdku="sdk selfupdate && sdk update"
alias nfa="docker run -it -v ~/.aws:/root/.aws cevoaustralia/aws-google-auth -p default"
alias intel="arch -x86_64"
alias cl="clear"
alias gip="curl icanhazip.com -4"
alias bi="brew install"
alias bic="brew install --cask"
alias cm="cmatrix"
alias gri="grep -ri"
alias bs="brew services"
alias sz=". ~/.zshrc"

### AWS
alias gci="aws sts get-caller-identity"
alias acf="aws cloudformation"
alias as3="aws s3"
alias acso="aws configure sso"
alias aso="aws sso"
alias ak="aws kinesis"
alias akds="aws kinesis describe-stream-summary --region us-east-1"
alias akls="aws kinesis list-streams --region us-east-1"
alias asl="aws sso login"
alias akgr="aws kinesis get-records --region us-east-1"

### GIT
alias git-all="git ls-tree --full-tree -r --name-only HEAD"
alias gpo="git push origin"
alias gdf="git diff"
alias gpl="git pull"
alias gpoa="git push origin alpha"
alias gcom="git commit -m"
alias gpom="git pull origin master"
alias gcoa="git checkout alpha"
alias gplo="git pull origin"
alias gploa="git pull origin alpha"
alias gcldf="git clone git@github.com:node40/datafaucet"
alias gwio="./gradlew idea && open datafaucet.ipr"

### GRADLE
# WITH scala/scalastyle
#alias gwbc="./gradlew build -x checkstyleMain -x checkstyleTest -x scalaStyle -x checkstyleAcceptanceTest"
#alias gwbc2="./gradlew build -x scalaStyle"
#alias gwbt="./gradlew build -x checkstyleMain -x checkstyleTest -x scalaStyle -x test"
#alias gwbt2="./gradlew build -x scalaStyle -x test"
#
# WITHOUT scala/scalastyle
alias gwbc="rm -rf out && ./gradlew clean build -x checkstyleMain -x checkstyleTest -x checkstyleAcceptanceTest -x test"
alias gwbt="rm -rf out && ./gradlew clean build -x checkstyleMain -x checkstyleTest -x test"
alias gwbt2="rm -rf out && ./gradlew clean build -x test"

alias gw="./gradlew"
alias gwb="rm -rf out && ./gradlew clean build"
alias gwr="./gradlew run"
alias gwbr="./gradlew build && ./gradlew run"
alias gwi="./gradlew idea"
alias gwc="./gradlew check"
alias gwcl="./gradlew clean && rm -rf out"
alias gwl="./gradlew --write-locks"
alias gwt="./gradlew test --rerun-tasks"
alias gwrd="./gradlew rundebug"
alias gwrdc="./gradlew rundebug -x checkstyleMain -x checkstyleTest -x checkstyleAcceptanceTest -x test -x acceptanceTest"
alias psg="ps aux | grep gradle"

### PYTHON
alias va=". venv/bin/activate && pip install --upgrade pip"
alias p="python"
alias pfr="pip freeze > requirements.txt"
alias da="deactivate"

### SQL/DB
alias ms-start="/usr/local/bin/mysql.server start"
alias ms-stop="/usr/local/bin/mysql.server stop"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
