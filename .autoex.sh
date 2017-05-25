#copy from https://ynome.wordpress.com/2013/04/14/linux-%E9%80%9A%E7%94%A8%E8%A7%A3%E5%8E%8B/

ex () {
        if [[ -z “$1” ]] ; then
               print -P “usage: \e[1;36mex\e[1;0m < filename >”
               print -P ”       Extract the file specified based on the extension”
        elif [[ -f $1 ]] ; then
           case $1 in
             *.tar)       tar xvf  $1     ;;
             *.tbz2)      tar xvjf $1    ;;
             *.tgz)       tar xvzf $1    ;;
             *.tar.bz2)   tar xjvf $1    ;;
             *.tar.gz)    tar xvzf $1    ;;
             *.tar.xz)    tar Jxf  $1    ;;
             *.tar.Z)     tar xvZf $1    ;;
             *.bz2)       bunzip2v $1    ;;
             *.rar)       rar x $1       ;;
             *.gz)        gunzip $1      ;;
             *.zip)       unzip $1       ;;
             *.Z)         uncompress $1  ;;
             *.xz)        xz -d $1       ;;
             *.lzo)       lzo -dv $1     ;;
             *.7z)        7z x $1        ;;
             *)           echo "'$1' cannot be extracted via extract()" ;;
           esac
       else
         echo “‘$1’ is not a valid file”
       fi
    }
