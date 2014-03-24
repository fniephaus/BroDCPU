operations
doBOR: b with: a
	self setWordAt: b to: ((self getWordFrom: a) bitOr: (self getWordFrom: b)).