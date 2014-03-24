parsing
parseNormalInstruction: subexpressions
	| aWords allWords bWords opcode |
	allWords := OrderedCollection new.
	opcode := self parseOpcode: (subexpressions at: 1).
	bWords := self parseValue: (subexpressions at: 2) in: #b.
	aWords := self parseValue: (subexpressions at: 3) in: #a.
	allWords add: (self concatSubexpressions: opcode b: (bWords at: 1) a: (aWords at: 1)).
	aWords size > 1 ifTrue: [ allWords add: (aWords at: 2) ].
	bWords size > 1 ifTrue: [ allWords add: (bWords at: 2) ].
	^ allWords