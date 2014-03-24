word-lookup
getFromOffsettedStackAddress
	"[ SP +next word ]"
	| word |
	word := self ram get: self registerBank sp
				+ (self ram get: self registerBank pc).
	self registerBank incrementPC.
	^ word