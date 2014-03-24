execute
testDoMULOverflow
	"MLI J, A"
	| instruction |
	self registerBank
		set: 16r0 to: 16r7;
		set: 16r7 to: 16r8000.
	instruction := self cpu decode: 2r0000000011100100.
	self cpu execute: instruction.
	self
		assert: (self registerBank get: 16r7) = 16r8000;
		assert: (self registerBank ex) = 16r0003.