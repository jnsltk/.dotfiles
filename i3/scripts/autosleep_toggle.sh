if xautolock -exit;
then
    (notify-send -u normal -t 1000 -- 'LOCK OFF') 2> /dev/null;
    xset -dpms;
    xset s off;
else
    (notify-send -u normal -t 1000 -- 'LOCK ON') 2> /dev/null;
    xautolock -time 10 -locker 'loginctl lock session';
    xset +dpms;
    xset s on;
fi 

