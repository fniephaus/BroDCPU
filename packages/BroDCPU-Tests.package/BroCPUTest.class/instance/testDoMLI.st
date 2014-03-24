execute
testDoMLI
	"MLI J, A"
	| instruction |
	self registerBank
		set: 16r0 to: 2r1111111111111011; "-5"
		set: 16r7 to: 2r00110. "6"
	instruction := self cpu decode: 2r0000000011100101.
	self cpu execute: instruction.
	self assert: (self cpu unsign16Bit: (self registerBank get: 16r7)) = -30.