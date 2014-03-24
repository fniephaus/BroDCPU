tests
testSetAtOffsettedAddressOfRegister
	| binaryInstructions |
	binaryInstructions := BroParser parse: '
		set b, 1
		set [ b + 0x8888 ], 2
		add [ b + 0x8888 ], 16'.
	self ram setBulk: 16r0 to: binaryInstructions.
	self cpu mainLoop.
	self
		assert: (self ram get: 16r8889) = 18;
		assert: (self registerBank pc = 5).