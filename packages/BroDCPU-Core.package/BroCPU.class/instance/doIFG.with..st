operations
doIFG: b with: a 
	"performs next instruction only if b>a"
	| result aWord bWord |
	aWord := self getWordFrom: a.
	bWord := self getWordFrom: b.
	result := bWord - aWord.
	result > 0 ifFalse: [ self skipsNextInstruction: true ].