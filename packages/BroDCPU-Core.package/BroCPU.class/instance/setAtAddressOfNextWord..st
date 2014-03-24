word-lookup
setAtAddressOfNextWord: aWord
	"[ next word ]"
	| address |
	address := self ram get: self registerBank pc - 1.
	self ram set: address to: aWord.