tests
testPush
	| binaryInstruction |
	binaryInstruction := BroParser parse: 'set push, 0x1337'.
	self ram setBulk: 0 to: binaryInstruction.
	self cpu mainLoop.
	self
		assert: self registerBank sp = 16rffff;
		assert: (self ram get: 16rffff) = 16r1337.