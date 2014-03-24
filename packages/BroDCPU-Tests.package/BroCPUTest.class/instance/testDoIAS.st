execute
testDoIAS
	"IAS a"
	| instruction |
	self registerBank set: 16r0 to: 16r444.
	instruction := self cpu decode: 2r0000000101000000.
	self cpu execute: instruction.
	self assert: (self registerBank ia) = 16r444.