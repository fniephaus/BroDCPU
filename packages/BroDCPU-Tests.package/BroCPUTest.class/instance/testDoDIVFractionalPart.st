execute
testDoDIVFractionalPart
	"DIV J, A"
	| instruction |
	self registerBank
		set: 16r0 to: 2r0011; "3"
		set: 16r7 to: 2r1011. "11"
	instruction := self cpu decode: 2r0000000011100110.
	self cpu execute: instruction.
	self
		assert: (self registerBank get: 16r7) = 3;
		assert: (self registerBank ex) = 2.