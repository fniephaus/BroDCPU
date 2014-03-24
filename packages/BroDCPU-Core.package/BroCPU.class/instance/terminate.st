termination
terminate
	(self detectHardware: BroClock) stopTicking.
	self mainloopProcess ifNotNil: [
		self mainloopProcess terminate ].