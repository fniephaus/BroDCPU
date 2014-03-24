execute
testDoMDI
	"MDI J, A"
	| instruction |
	self registerBank
		set: 16r0 to: 2r10000; "16"
		set: 16r7 to: 2r1111111111111001. "-7"
	instruction := self cpu decode: 2r0000000011101001.
	self cpu execute: instruction.
	self assert: (self cpu unsign16Bit: (self registerBank get: 16r7)) = -7.