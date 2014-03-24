execute
testDoMOD
	"MOD J, A"
	| instruction |
	self registerBank
		set: 16r0 to: 16r36;
		set: 16r7 to: 16raf5.
	instruction := self cpu decode: 2r0000000011101000.
	self cpu execute: instruction.
	self assert: (self registerBank get: 16r7) = 51.