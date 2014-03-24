operations
doSHR: b with: a 
	| valueA valueB |
	valueA := self getWordFrom: a.
	valueB := self getWordFrom: b.
	self setWordAt: b to: (valueB bitShift: valueA negated).
	self registerBank
		ex: (valueB bitAnd: (2 raisedTo: valueA) - 1).