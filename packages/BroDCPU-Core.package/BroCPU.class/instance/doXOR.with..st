operations
doXOR: b with: a
	self setWordAt: b to: ((self getWordFrom: a) bitXor: (self getWordFrom: b)).