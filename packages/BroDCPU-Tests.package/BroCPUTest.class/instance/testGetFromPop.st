tests
testGetFromPop
	| binaryInstructions |
	self registerBank sp: 16rffff.
	self ram set: 16rffff to: 16r1337.
	binaryInstructions := BroParser parse: 'set a, pop'.
	self ram setBulk: 0 to: binaryInstructions.
	self cpu mainLoop.
	self
		assert: (self registerBank get: 0) = 16r1337;
		assert: self registerBank sp = 16r0.