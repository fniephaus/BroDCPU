operations
doSTI: b with: a
	| aWord |
	aWord := self getWordFrom: a.
	self getWordFrom: b preserveSP: true.
	self setWordAt: b to: aWord.
	self registerBank
		increment: 6;
		increment: 7.