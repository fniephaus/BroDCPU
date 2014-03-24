tests
testSet
	| value address |
	value := 16rffff.
	address := 16r0001.
	self ram set: address to: value.
	self assert: (self ram get: address) = value.