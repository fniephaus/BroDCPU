decoding
decodeColorPalette: aWord
	"Converts aWord into a RGB Hex Value.
	In bits (in LSB-0 format), a cell has the format: 0000rrrrggggbbbb"
	| red green blue |
	red := BroDCPU getBits: aWord from: 4 to: 7.
	green := BroDCPU getBits: aWord from: 8 to: 11.
	blue := BroDCPU getBits: aWord from: 12 to: 15.
	^ Color r: red / 15 g: green / 15 b: blue / 15