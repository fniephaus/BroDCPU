operations
doAND: b with: a
	self setWordAt: b to: ((self getWordFrom: a)  bitAnd: (self getWordFrom: b)).