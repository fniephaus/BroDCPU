execute
testDoIAG
	"IAG a"
	| instruction |
	self registerBank ia: 16r98.
	instruction := self cpu decode: 2r0000000100100000.
	self cpu execute: instruction.
	self assert: (self registerBank get: 16r0) = 16r98.