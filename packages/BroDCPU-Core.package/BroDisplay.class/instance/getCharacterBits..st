decoding
getCharacterBits: aCharacterPosition 
	| word1 word2 doubleWord |
	word1 := self getFontValue: aCharacterPosition * 2.
	word2 := self getFontValue: aCharacterPosition * 2 + 1.
	doubleWord := (word1 bitShift: 16) + word2.
	^ doubleWord