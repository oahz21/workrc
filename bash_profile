if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles/bottles #ckbrew
eval $(/opt/homebrew/bin/brew shellenv) #ckbrew

