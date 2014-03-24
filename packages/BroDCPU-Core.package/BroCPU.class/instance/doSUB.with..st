operations
doSUB: b with: a
	| result |
	result := -1 * (self getWordFrom: a) + (self getWordFrom: b).
	result < 0
		ifTrue: [ self registerBank ex: 16rFFFF ];
		ifFalse: [ self registerBank ex: 16r0000 ].
	self setWordAt: b to: result.