tests
testSetAtAddressOfRegister
	| binaryInstructions |
	binaryInstructions := BroParser parse: '
		set b, 0x5678
		set [ b ], 32
		add [ b ], 64'.
	self ram setBulk: 16r0 to: binaryInstructions.
	self cpu mainLoop.
	self assert: (self ram get: 16r5678) = 96.