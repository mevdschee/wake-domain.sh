#!/bin/bash
tail -F /var/log/auth.log | while read line || { sleep 1 ; continue; }; do
    if [[ $line =~ error:\ connect_to\ ([-a-zA-Z0-9]+)\ port\ 3389 ]]; then
        /usr/bin/virsh start ${BASH_REMATCH[1]}
        /usr/bin/virsh dompmwakeup ${BASH_REMATCH[1]}
    fi
done
