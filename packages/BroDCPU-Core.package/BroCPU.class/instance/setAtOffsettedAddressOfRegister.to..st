word-lookup
setAtOffsettedAddressOfRegister: aRegister to: aWord
	"[ register + next word ]"
	self ram set: (self registerBank get: aRegister) +
		 (self ram get: self registerBank pc - 1) to: aWord.