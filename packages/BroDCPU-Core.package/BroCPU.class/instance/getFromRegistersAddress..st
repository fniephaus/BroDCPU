word-lookup
getFromRegistersAddress: aRegister
	"[ register ]"
	^ self ram get: (self getFromRegister: aRegister)