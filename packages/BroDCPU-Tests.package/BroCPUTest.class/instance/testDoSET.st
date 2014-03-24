execute
testDoSET
	"SET Z, X"
	| instruction |
	self registerBank
		set: 16r3 to: 16r4;
		set: 16r5 to: 16ra.
	instruction := self cpu decode: 2r0000110010100001.
	self cpu execute: instruction.
	self assert: (self registerBank get: 16r5) = 16r4.