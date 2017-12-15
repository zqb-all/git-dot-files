#!/bin/sh

exec xautolock -detectsleep \
  -time 5 -locker 'i3lock -c 000000 -i "$HOME/.i3/lock.png" -d' \
  -notify 30 \
-notifier "notify-send -t 29000 -- 'LOCKING screen in 30 seconds'"
