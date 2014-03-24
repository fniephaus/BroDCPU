execute
testDoDIVZero
	"DIV J, A"
	| instruction |
	self registerBank
		set: 16r0 to: 16r0;
		set: 16r7 to: 16rf53.
	instruction := self cpu decode: 2r0000000011100110.
	self cpu execute: instruction.
	self
		assert: (self registerBank get: 16r7) = 0;
		assert: (self registerBank ex) = 0.