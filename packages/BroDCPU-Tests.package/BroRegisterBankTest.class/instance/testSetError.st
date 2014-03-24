tests
testSetError
	| key value |
	key := 16r12.
	value := 16rffff.
	self should: [ self registerBank set: key to: value ] raise: Error.