tests
testClockTicking
	<timeout: 10>
	"6 times tics per sec"
	self registerBank set: 1 to: 10.
	self clock handleInterrupt: self registerBank.
	(Delay forMilliseconds: 5000) wait.
	"read value"
	self registerBank set: 0 to: 1.
	self clock handleInterrupt: self registerBank.
	self assert: (self registerBank get: 2) >= 6.