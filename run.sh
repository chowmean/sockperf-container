run_server(){
	echo "Running Server"
	sockperf server --tcp -p 11111
}

run_client(){
	echo "Running client on $1:11111"
	sockperf under-load --tcp -i $1 --msg-size 1500 --full-rtt -p 11111 -t 5
}

case $1 in
	s)
		echo "Triggering server port on 11111"
		run_server
	;;
	c)
		echo "Triggering client to $2:11111"
		run_client $2
	;;
esac
