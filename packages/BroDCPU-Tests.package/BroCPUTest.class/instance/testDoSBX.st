execute
testDoSBX
	"SBX B, A"
	| instruction |
	self registerBank
		set: 16r0 to: 16rc95;
		set: 16r1 to: 16r935;
		ex: 16r2.
	instruction := self cpu decode: 2r0000000000111011.
	self cpu execute: instruction.
	self
		assert: (self registerBank get: 16r1) = 16rFCA2;
		assert: (self registerBank ex) = 16rFFFF.