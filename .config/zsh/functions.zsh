
fzf-snippet() { 
    selected="$(cat ~/.config/snippetrc | sed '/^$/d' | sort -n | fzf -e -i )"
    # remove tags, leading and trailing spaces, also no newline
    echo "$selected" | sed -e s/\;\;\.\*\$// | sed 's/^[ \t]*//;s/[ \t]*$//' | tr -d '\n' | xclip -selection clipboard
}

fzf-surfraw() {
	surfraw "$(cat ~/.config/surfraw/bookmarks | sed '/^$/d' | sort -n | fzf -e)"
}

mkcd() {
	mkdir -p "$1"
	cd "$_"
}

cs() {
    
    cd "$@" && ls
}

js() {
    j "$@" && ls
}


function swap()         
{
    local TMPFILE=tmp.$$
    mv "$1" $TMPFILE
    mv "$2" "$1"
    mv $TMPFILE "$2"
}

# Cd to newly created mount
function cdm()
{
    cd /run/media/$USER/
    cd "$(ls -td -- */ | head -n 1)"
}
# Umount latest created media
function umm()
{
    cd /run/media/$USER/
    umount $(ls -td -- */ | head -n 1)
}
