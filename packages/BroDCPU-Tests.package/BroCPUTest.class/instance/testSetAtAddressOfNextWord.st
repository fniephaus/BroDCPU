tests
testSetAtAddressOfNextWord
	| binaryInstructions |
	binaryInstructions := BroParser parse: '
		set [ 0x8888 ], 2
		add [ 0x8888 ], 16'.
	self ram setBulk: 16r0 to: binaryInstructions.
	self cpu mainLoop.
	self
		assert: (self ram get: 16r8888) = 18;
		assert: (self registerBank pc = 4).