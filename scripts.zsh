# archives and compression
extract() {
    if [[ -f $1 ]]; then
        case $1 in
            *.tar.bz2)  tar -xjf $1 ;;
            *.tar.gz)   tar -xzf $1 ;;
            *.tar.lzma) tar --lzma -xf $1 ;;
            *.bz2)      bunzip2 $1 ;;
            *.gz)       gunzip $1 ;;
            *.lzma)     unlzma $1 ;;
            *.rar)      unrar -e $1 ;;
            *.tar)      tar -xf $1 ;;
            *.tbz2)     tar -xjf $1 ;;
            *.tgz)      tar -xzf $1 ;;
            *.zip)      unzip -d ${$1%???} $1 ;;
            *.Z)        gunzip $1 ;;
            *.7z)       7z x $1 ;;
            *)          echo "Unsupported compressed file type." ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

mktar() { tar -cf "${1%%/}.tar" "${1%%/}/"; }
mktgz() { tar -czf "${1%%/}.tar.gz" "${1%%/}/"; }
mktbz() { tar -cjf "${1%%/}.tar.bz2" "${1%%/}/"; }
mktlz() { tar --lzma -cf "${1%%/}.tar.lzma" "${1%%/}/"; }
