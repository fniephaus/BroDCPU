operations
doIFA: b with: a
	"performs next instruction only if b>a (signed)"
	| decodedB decodedA result |
	decodedA := self unsign16Bit: (self getWordFrom: a).
	decodedB := self unsign16Bit: (self getWordFrom: b).
	result := decodedB - decodedA.
	result > 16r0 ifFalse: [ self skipsNextInstruction: true ].