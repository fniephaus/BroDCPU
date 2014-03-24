operations
doSTD: b with: a 
	| aWord |
	aWord := self getWordFrom: a.
	self getWordFrom: b preserveSP: true.
	self setWordAt: b to: aWord.
	self registerBank
		decrement: 6;
		decrement: 7.