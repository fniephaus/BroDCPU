execute
testDoAND
	"AND J, A"
	| instruction |
	self registerBank
		set: 16r0 to: 2r11100;
		set: 16r7 to: 2r10101.
	instruction := self cpu decode: 2r0000000011101010.
	self cpu execute: instruction.
	self assert: (self registerBank get: 16r7) = 2r10100