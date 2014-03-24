word-lookup
getNextWord
	"next word"
	| word |
	word := self ram get: self registerBank pc.
	self registerBank incrementPC.
	^ word