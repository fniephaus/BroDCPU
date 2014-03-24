operations
doADD: b with: a
	| result |
	result := (self getWordFrom: a) + (self getWordFrom: b).
	result > BroDCPU bitMask
		ifTrue: [ self registerBank ex: 16r0001 ];
		ifFalse: [ self registerBank ex: 16r0000 ].
	self setWordAt: b to: result.
