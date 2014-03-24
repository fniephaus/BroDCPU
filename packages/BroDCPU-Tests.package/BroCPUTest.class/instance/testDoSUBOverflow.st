execute
testDoSUBOverflow
	"SUB J, A"
	| instruction |
	self registerBank
		set: 16r0 to: 16rfffe;
		set: 16r7 to: 16r0001.
	instruction := self cpu decode: 2r0000000011100011.
	self cpu execute: instruction.
	self assert: (self registerBank ex) = 16rffff.