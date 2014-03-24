drawing
pixelPointAt: aCharacterBit
	| x y |
	x := aCharacterBit // 8.
	y := 7 - (aCharacterBit \\ 8).
	^ x @ y