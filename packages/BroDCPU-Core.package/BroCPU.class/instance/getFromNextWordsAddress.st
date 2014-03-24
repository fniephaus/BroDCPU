word-lookup
getFromNextWordsAddress
	"[ next word ]"
	| word |
	word := self ram get: (self ram get: self registerBank pc).
	self registerBank incrementPC.
	^ word