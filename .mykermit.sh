
kcom() {
	ports_USB=$(ls /dev/ttyUSB*)
	ports_ACM=$(ls /dev/ttyACM*)  #arduino
	ports="$ports_USB $ports_ACM"
	select port in $ports;do
		if [ "$port" ]; then
		    echo "You select the choice '$port'"
		    kermit -c -l "$port" -b 115200 "$@"
		    break
		else
		    echo "Invaild selection"
	    fi
	done
}
