
com() {
	ports=`ls /dev/ttyUSB*`
	select port in $ports;do
		if [ $port ]; then
		    echo "You select the choice '$port'"
		    exec minicom -D $port $@
		    break
		else
		    echo "Invaild selection"
	    fi
	done
}
