word-lookup
setAtOffsettedStackAddress: aWord
	"[ SP + next word ]"
	| address |
	address := self registerBank sp + (self ram get: (self registerBank pc - 1)).
	self ram set: address to: aWord.