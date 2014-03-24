parsing
parseSpecialInstruction: subexpressions
	| allWords aWords opcode |
	allWords := OrderedCollection new.
	opcode := self parseSpecialOpcode: (subexpressions at: 1).
	aWords := self parseValue: (subexpressions at: 2) in: #a.
	allWords add: (self concatSubexpressions: 0 b: opcode a: (aWords at: 1)).
	aWords size > 1 ifTrue: [
		allWords add: (aWords at: 2) ].
	 ^ allWords