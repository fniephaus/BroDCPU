execute
testDoSUB
	"SUB J, A"
	| instruction |
	self registerBank
		set: 16r0 to: 16r935;
		set: 16r7 to: 16rc95.
	instruction := self cpu decode: 2r0000000011100011.
	self cpu execute: instruction.
	self
		assert: (self registerBank get: 16r7) = 16r360;
		assert: (self registerBank ex) = 16r0.