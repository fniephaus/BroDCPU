word-lookup
getWordFrom: aLocationCode preserveSP: aBoolean
	aLocationCode < 16r8 ifTrue: [
		^ self getFromRegister: aLocationCode ].
	aLocationCode < 16r10 ifTrue: [
		^ self getFromRegistersAddress: aLocationCode - 16r8 ].
	aLocationCode < 16r18 ifTrue: [
		^ self getFromRegistersOffsettedAddress: aLocationCode - 16r10 ].
	aLocationCode = 16r18 ifTrue: [
		aBoolean ifFalse: [ ^ self pop ].
		"return value will never be used"
		^ self ].
	aLocationCode = 16r19 ifTrue: [
		^ self ram get: self registerBank sp ].
	aLocationCode = 16r1a ifTrue: [
		^ self getFromOffsettedStackAddress ].
	aLocationCode = 16r1b ifTrue: [
		^ self registerBank sp ].
	aLocationCode = 16r1c ifTrue: [
		^ self registerBank pc ].
	aLocationCode = 16r1d ifTrue: [
		^ self registerBank ex ].
	aLocationCode = 16r1e ifTrue: [
		^ self getFromNextWordsAddress ].
	aLocationCode = 16r1f ifTrue: [
		^ self getNextWord ].
	aLocationCode = 16r20 ifTrue: [
		"serves the underflow demanded by specification (regarding small literals)"
		^ 16rffff ].
	aLocationCode < 16r40 ifTrue: [
		^ aLocationCode - 16r21 ].