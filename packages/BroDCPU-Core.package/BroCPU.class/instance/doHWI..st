special-operations
doHWI: a
	| aWord |
	aWord := self getWordFrom: a.
	aWord > 0 ifTrue: [
		(self hardware at: aWord) handleInterrupt: self registerBank ].