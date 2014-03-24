tests
testSetOverflow
	| key value |
	key := 16r5.
	value := 16r10001.
	self registerBank set: key to: value.
	self assert: (self registerBank get: key) = (value bitAnd: 16rffff).