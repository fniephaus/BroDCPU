tests
testAddressTooLongCutaway
	| value address |
	value := 16r12345.
	address := 16r0001.
	self ram set: address to: value.
	self assert: (self ram get: address) = 16r2345. 