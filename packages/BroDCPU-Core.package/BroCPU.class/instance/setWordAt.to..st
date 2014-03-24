word-lookup
setWordAt: aLocationCode to: aWord
	aLocationCode < 16r8 ifTrue: [
		^ self setRegister: aLocationCode to: aWord ].
	aLocationCode < 16r10 ifTrue: [
		^ self setAtAddressOfRegister: aLocationCode - 16r8 to: aWord ].
	aLocationCode < 16r18 ifTrue: [
		^ self setAtOffsettedAddressOfRegister: aLocationCode - 16r10 to: aWord ].
	aLocationCode = 16r18 ifTrue: [
		^ self push: aWord ].
	aLocationCode = 16r19 ifTrue: [
		^ self ram set: self registerBank sp to: aWord ].
	aLocationCode = 16r1a ifTrue: [
		^ self setAtOffsettedStackAddress: aWord ].
	aLocationCode = 16r1b ifTrue: [
		^ self registerBank sp: aWord ].
	aLocationCode = 16r1c ifTrue: [
		^ self registerBank pc: aWord ].
	aLocationCode = 16r1d ifTrue: [
		^ self registerBank ex: aWord ].
	aLocationCode = 16r1e ifTrue: [
		^ self setAtAddressOfNextWord: aWord ]