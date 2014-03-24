operations
doMOD: b with: a
	| aWord bWord |
	aWord := self getWordFrom: a.
	bWord := self getWordFrom: b.
	aWord isZero
		ifTrue: [ self setWordAt: b to: 16r0 ]
		ifFalse: [ self setWordAt: b to: bWord \\ aWord ].