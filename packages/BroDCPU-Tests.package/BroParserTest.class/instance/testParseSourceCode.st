tests
testParseSourceCode
	| code binaryInstructions |
	"SET b, a | sets b to a"
	code :='set a, 0x9
			 set b, 0x8
			 set b, a
			 set c, 0x33
			 set x, [ 0x0 ]
			 set y, 10'.
	binaryInstructions := BroParser parse: code.
	self cpu ram setBulk: 16r0 to: binaryInstructions.
	self cpu mainLoop.
	self
		assert: (self cpu registerBank get: 16r1) = 16r9;
		assert: (self cpu registerBank get: 16r2) = 16r33;
		assert: (self cpu registerBank get: 16r3) = (self cpu ram get: 16r0);
		assert: (self cpu registerBank get: 16r4) = 10.