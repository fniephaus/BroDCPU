word-lookup
setAtAddressOfRegister: aRegister to: aWord
	"[ register ]"
	self ram set: (self getFromRegister: aRegister) to: aWord.