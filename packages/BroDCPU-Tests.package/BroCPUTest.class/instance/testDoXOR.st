execute
testDoXOR
	"XOR J, A"
	| instruction |
	self registerBank
		set: 16r0 to: 2r11000;
		set: 16r7 to: 2r00101.
	instruction := self cpu decode: 2r0000000011101100.
	self cpu execute: instruction.
	self assert: (self registerBank get: 16r7) = 2r11101.