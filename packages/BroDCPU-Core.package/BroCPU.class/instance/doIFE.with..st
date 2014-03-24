operations
doIFE: b with: a
	"performs next instruction only if b==a "
	| result |
	result := (self getWordFrom: a) - (self getWordFrom: b).
	result = 16r0 ifFalse: [ self skipsNextInstruction: true ].