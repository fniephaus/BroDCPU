tests
testCharacterBits
	"One character consists of two words. Set the 69th character and
	test if getCharacterBits returns them correctly"
	self ram
		set: BroDisplay defaultFontAddress + (2 * 69) to: 16rfe92;
		set: BroDisplay defaultFontAddress + (2 * 69) + 1 to: 16r8200.
	self assert: (self display getCharacterBits: 69) = ((16rfe92 bitShift: 16) + 16r8200)