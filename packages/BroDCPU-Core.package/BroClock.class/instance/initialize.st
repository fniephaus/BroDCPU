initialize-release
initialize
	super initialize.
	self
		internalClock: 0;
		areInterruptsEnabled: false;
		isClockRunning: false.
	