termination
detectHardware: aHardware
	^ self hardware detect: [ :device |
		(device class hardwareID) = (aHardware hardwareID) ]