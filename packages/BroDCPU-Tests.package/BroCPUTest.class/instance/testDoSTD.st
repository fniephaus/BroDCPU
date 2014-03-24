execute
testDoSTD
	"STD B, A"
	| instruction |
	self registerBank
		set: 16r0 to: 16rFCBA;
		set: 16r1 to: 16r935;
		set: 16r6 to: 16r8f;
		set: 16r7 to: 16rA200.
	instruction := self cpu decode: 2r0000000000111111.
	self cpu execute: instruction.
	self
		assert: (self registerBank get: 16r1) = 16rFCBA;
		assert: (self registerBank get: 16r6) = 16r8E;
		assert: (self registerBank get: 16r7) = 16rA1FF.