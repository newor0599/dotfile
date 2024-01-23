#!/bin/bash

while true; do
		# Scan bluetooth devices
    bash /home/newor/.config/eww/script/bluetooth/bt-scan.sh > /dev/null 2>&1

		# Get device id and names
		ids=$(bluetoothctl devices | grep Device | awk '{print $2}')
		names=$(bluetoothctl devices | grep Device | tr '-' ':' | awk '{sub($1 FS $2 FS, ""); print}')

		# Get connected devices
		connected=$(bluetoothctl devices Connected | awk '{sub($1 FS $4 FS, ""); print}')
		
		# Widget body start
    widget='(scroll :vscroll true :class "bt" :valign "fill" :vexpand true (box :orientation "v" :vexpand true :valign "fill" :space-evenly false :class "bt scroll-child" '
		id=()
		name=()

		# Changing ids to array
		while IFS= read -r line; do
			id+=("$line")
		done <<< "$ids"
		
		# Changing names to array
		while IFS= read -r line; do
			name+=("$line")
		done <<< "$names"

		# Debug purpose
		echo "IDs"
		echo ${id[@]}
		echo ""
		echo "Device Names"
		echo ${name[@]}
		echo ""
		echo "Connected"
		echo ${connected}
		
		# Generating widget
		for ((i=0; i<${#name[@]};i++)); do
			if $(echo ${id[i]} | grep -q ${name[i]}); then
				:
			else
				if $(echo {$connected} | grep -q "${name[i]}"); then
					widget+="(button :class \"bt cnted\" :onclick \"bluetoothctl disconnect ${id[i]}\" \"${name[i]}\") "
				else
				  widget+="(button :class \"bt cnt\" :onclick \"bluetoothctl connect ${id[i]}\" \"${name[i]}\") "
				fi
			fi
		done
		
		# Widget body end
		widget+='))'
		# Send to EWW widget
    stdbuf -e L echo "$widget"

		# Repeat every 10 second
    sleep 10
done
