execute
testDoADD
	| binaryInstructions |
	binaryInstructions := BroParser parse: '
		set a, 4
		set j, 10
		add j, a'.
	self ram setBulk: 16r0 to: binaryInstructions.
	self cpu mainLoop.
	self
		assert: (self registerBank get: 16r7) = 16re;
		assert: (self registerBank ex) = 16r0.