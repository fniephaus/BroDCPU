word-lookup
getFromRegistersOffsettedAddress: aRegister
	"[ register + next word ]"
	| word |
	word := self ram get: 
		(self getFromRegister: aRegister) + (self ram get: self registerBank pc).
	self registerBank incrementPC.
	^ word