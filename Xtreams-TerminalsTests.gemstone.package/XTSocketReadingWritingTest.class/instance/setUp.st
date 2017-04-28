initialize-release
setUp

	| socket1 socket2 |
	Socket initializeNetwork.

	socket1 := Socket newTCP.
	socket2 := Socket newTCP.
	
	socket1 listenOn: 9999.
	socket2 connectTo: (NetNameResolver localHostAddress) port: 9999 waitForConnectionFor: 5.

	socket1 waitForConnectionFor: 10.	
	socket2 waitForConnectionFor: 10.
	
	input := socket1 reading.
	output := socket2 writing.