tests
testClock
	<timeout: 3>
	| timeStamp |
	self assert: self clock internalClock = 0.
	self registerBank
		set: 16r0 to: 0;
		set: 16r1 to: 1.
	self clock handleInterrupt: self registerBank.
	(Delay forMilliseconds: 500) wait.
	timeStamp := self clock internalClock.
	self registerBank
		set: 16r0 to: 0;
		set: 16r1 to: 0.
	self clock handleInterrupt: self registerBank.
	(Delay forMilliseconds: 500) wait.
	self assert: timeStamp = self clock internalClock.