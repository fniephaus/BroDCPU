operations
doDVI: b with: a
	| decodedA decodedB |
	decodedA := self unsign16Bit: (self getWordFrom: a).
	decodedB := self unsign16Bit: (self getWordFrom: b).
	decodedA isZero
		ifTrue: [
			self setWordAt: b to: 0.
			self registerBank ex: 0 ]
		ifFalse: [
			self setWordAt: b to: (self sign16Bit: decodedB // decodedA).
			self registerBank ex: decodedB \\ decodedA ].