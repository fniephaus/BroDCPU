interrupts
toggleClock: aBroRegisterBank
	(aBroRegisterBank get: 1) ~= 0
		ifTrue: [ self startTicking: (aBroRegisterBank get: 1) ]
		ifFalse: [ self isClockRunning: false ].