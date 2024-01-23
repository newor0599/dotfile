#!/bin/bash
(
    /usr/bin/expect <<'END'
        spawn bluetoothctl
        expect "#"
        send "scan on\r"
        sleep 1
				send "scan off\r"
        interact
END
);
