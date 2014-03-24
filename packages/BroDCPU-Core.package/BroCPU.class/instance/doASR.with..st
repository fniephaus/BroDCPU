operations
doASR: b with: a
	| valueA valueB result mask |
	valueA := self getWordFrom: a.
	valueB := self getWordFrom: b.
	result := valueB >> valueA.
	"generate mask to perform arithmetic shift"
	mask := 0.
	1 to: valueA do: [ :index | mask := mask + (2 raisedTo: (16 - index)) ].
	self setWordAt: b to: (result bitOr: mask).
	self registerBank ex: (valueB bitAnd: ((2 raisedTo: valueA) - 1)) .