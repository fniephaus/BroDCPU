tests
testSet
	| key value |
	key := 16r2.
	value := 16rff.
	self registerBank set: key to: value.
	self assert: (self registerBank get: key) = value.