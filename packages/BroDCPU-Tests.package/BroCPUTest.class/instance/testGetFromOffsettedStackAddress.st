tests
testGetFromOffsettedStackAddress
	self registerBank
		sp: 16r1000;
		pc: 16r100.
	self ram
		set: 16r100 to: 16r2000;
		set: 16r3000 to: 16r1337.
	self
		assert: (self cpu getWordFrom: 16r1a) = 16r1337;
		assert: self cpu registerBank sp = 16r1000.