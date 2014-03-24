operations
doDIV: b with: a
	| valueA valueB |
	valueA := self getWordFrom: a.
	valueB := self getWordFrom: b.
	valueA = 0
		ifTrue: [
			self setWordAt: b to: 0.
			self registerBank ex: 0 ]
		ifFalse: [
			self setWordAt: b to: valueB // valueA.
			self registerBank ex: valueB \\ valueA ].