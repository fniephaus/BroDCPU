operations
doMLI: b with: a
	| decodedB decodedA |
	decodedA := self unsign16Bit: (self getWordFrom: a).
	decodedB := self unsign16Bit: (self getWordFrom: b).
	self setWordAt: b to: (self sign16Bit: decodedB * decodedA).