tests
testSetAtOffsettedStackAddress
	| binaryInstructions |
	binaryInstructions := BroParser parse: '
		set SP, 0x8888
		set [ SP + 32 ], 1337'.
	self ram setBulk: 16r0 to: binaryInstructions.
	self cpu mainLoop.
	self
		assert: (self ram get: (16r8888 + 32)) = 1337;
		assert: (self registerBank pc = 5).