start-stop
stopTicking
	(self isClockRunning and: [ self clockProcess notNil ]) ifTrue: [
		self clockProcess terminate ].