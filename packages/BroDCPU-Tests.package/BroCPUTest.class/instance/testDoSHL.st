execute
testDoSHL
	"SHL B, A"
	| instruction |
	self registerBank
		set: 16r0 to: 7;
		set: 16r1 to: 2r1001011001011010.
	instruction := self cpu decode: 2r0000000000101111.
	self cpu execute: instruction.
	self
		assert: (self registerBank get: 16r1) = 2r0010110100000000;
		assert: (self registerBank ex) = 2r1001011.