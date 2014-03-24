start-stop
startTicking: aFrequency
	self internalClock: 0.
	self isClockRunning ifFalse: [
		self clockProcessWithFrequency: aFrequency.
		self clockProcess
			name: 'BroClock';
			resume ].