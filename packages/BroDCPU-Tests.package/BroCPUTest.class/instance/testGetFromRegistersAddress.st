tests
testGetFromRegistersAddress
	| addressContent |
	self registerBank set: 16r2 to: 16r9.
	self ram set: 16r9 to: 2r0000000000001011.
	addressContent := self cpu getFromRegistersAddress: 16r2.
	self assert: addressContent = 2r1011.