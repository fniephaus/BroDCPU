operations
doADX: b with: a
	| sum |
	sum := (self getWordFrom: a) + (self getWordFrom: b) + self registerBank ex.
	self setWordAt: b to: sum.
	sum > BroDCPU bitMask
		ifTrue: [ self registerBank ex: 16r0001 ]
		ifFalse: [ self registerBank ex: 16r0 ].