operations
doIFB: b with: a 
	"performs next instruction only if (b&a)!=0"
	| result |
	result := (self getWordFrom: a) bitAnd: (self getWordFrom: b).
	result isZero ifTrue: [ self skipsNextInstruction: true ].