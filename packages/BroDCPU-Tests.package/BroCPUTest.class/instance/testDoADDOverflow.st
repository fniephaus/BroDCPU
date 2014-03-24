execute
testDoADDOverflow
	| binaryInstructions |
	binaryInstructions := BroParser parse: '
		set a, 0x8100
		set j, 0x80f0
		add j, a'.
	self ram setBulk: 16r0 to: binaryInstructions.
	self cpu mainLoop.
	self
		assert: (self registerBank get: 16r7) = 16r1f0;
		assert: (self registerBank ex) = 16r0001.