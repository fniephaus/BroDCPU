tests
testSetAtOffsettedAddressOfRegister2
	| binaryInstructions |
	binaryInstructions := BroParser parse: '
		set [ 40 ], 0x1337
		set a, 4
		set b, [ 36 + a ]'.
	self ram setBulk: 16r0 to: binaryInstructions.
	self cpu mainLoop.
	self assert: (self ram get: 40) = 16r1337.