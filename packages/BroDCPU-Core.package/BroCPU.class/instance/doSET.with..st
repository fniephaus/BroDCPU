operations
doSET: b with: a
	| aWord |
	aWord := self getWordFrom: a.
	self getWordFrom: b preserveSP: true.
	self setWordAt: b to: aWord.