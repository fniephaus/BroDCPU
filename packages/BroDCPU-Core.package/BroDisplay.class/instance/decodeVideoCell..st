decoding
decodeVideoCell: aWord
	"Converts aWord into an array containing character, blinking, background and foreground.
	In bits (in LSB-0 format), a cell has the format: ffffbbbbBccccccc"
	| character blinking background foreground |
	foreground := self getColor: (BroDCPU getBits: aWord from: 0 to: 3).
	background := self getColor: (BroDCPU getBits: aWord from: 4 to: 7).
	blinking := BroDCPU getBits: aWord from: 8 to: 8.
	character := BroDCPU getBits: aWord from: 9 to: 15.
	^ Array with: character with: blinking with: background with: foreground