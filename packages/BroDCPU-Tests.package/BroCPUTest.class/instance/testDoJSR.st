execute
testDoJSR
	"JSR A"
	| instruction |
	self registerBank set: 16r0 to: 16r98.
	instruction := self cpu decode: 2r0000000000100000.
	self cpu execute: instruction.
	self
		assert: (self registerBank pc) = 16r98;
		assert: (self registerBank sp) = 16rFFFF.