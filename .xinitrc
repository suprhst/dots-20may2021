[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
picom -f &
nitrogen --restore &
numlockx &
exec spectrwm
