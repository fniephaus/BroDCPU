execute
testDoADX
	"ADX B, A"
	| instruction |
	self registerBank
		set: 16r0 to: 16r935;
		set: 16r1 to: 16rc95;
		ex: 16rFFFE.
	instruction := self cpu decode: 2r0000000000111010.
	self cpu execute: instruction.
	self
		assert: (self registerBank get: 16r1) = 16r15c8;
		assert: (self registerBank ex) = 16r1.