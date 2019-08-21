run_server(){
	echo "Running Server"
	sockperf server --tcp -p 11111
}

run_client(){
	echo "Running client on $2:11111"
	case $1 in
		ul)
			echo "Running under-load performance test."
			sockperf under-load --tcp -i $2 --msg-size 1500 --full-rtt -p 11111 -t 5
		;;
		th)
			echo "Running throughput test"
			sockperf throughput --tcp -i $2 --msg-size 1500 --full-rtt -p 11111 -t 5
		;;
	esac		
}

case $1 in
	s)
		echo "Triggering server port on 11111"
		run_server
	;;
	c)
		echo "Triggering client to $3:11111"
		run_client $2 $3
	;;
esac
