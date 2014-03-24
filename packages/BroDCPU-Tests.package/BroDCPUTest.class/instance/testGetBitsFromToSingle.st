tests
testGetBitsFromToSingle
	| bits |
	bits := BroDCPU getBits: 2r0000101011110101 from: 7 to: 7.
	self assert: bits = 2r0.