operations
doSHL: b with: a
	| result aWord |
	aWord := self getWordFrom: a.
	result := (self getWordFrom: b) bitShift: aWord.
	self setWordAt: b to: result.
	self registerBank ex: (result bitShift: -16).