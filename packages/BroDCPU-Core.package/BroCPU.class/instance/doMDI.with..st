operations
doMDI: b with: a
	| decodedB decodedA result |
	decodedA := self unsign16Bit: (self getWordFrom: a).
	decodedB := self unsign16Bit: (self getWordFrom: b).
	decodedB > 0
		ifTrue: [ result := (self sign16Bit: decodedB \\ decodedA) ]
		ifFalse: [
			decodedB isZero
				ifTrue: [ result := 16r0 ]
				ifFalse: [ result := self sign16Bit: decodedB \\ decodedA - decodedA ]].
	self setWordAt: b to: result.