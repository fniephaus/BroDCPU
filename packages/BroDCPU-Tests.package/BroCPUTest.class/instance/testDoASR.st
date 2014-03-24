execute
testDoASR
	"ASR B, A"
	| instruction |
	self registerBank
		set: 16r0 to: 5;
		set: 16r1 to: 2r1010101110110101.
	instruction := self cpu decode: 2r0000000000101110.
	self cpu execute: instruction.
	self
		assert: (self registerBank get: 16r1) = 2r1111110101011101;
		assert: (self registerBank ex) = 2r10101.