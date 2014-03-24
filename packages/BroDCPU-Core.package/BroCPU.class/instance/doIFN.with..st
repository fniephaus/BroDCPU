operations
doIFN: b with: a
	"performs next instruction only if b!=a"
	| result |
	result := -1 * (self getWordFrom: a) + (self getWordFrom: b).
	result = 16r0 ifTrue: [ self skipsNextInstruction: true ].