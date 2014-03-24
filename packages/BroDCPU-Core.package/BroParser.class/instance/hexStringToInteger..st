help-functions
hexStringToInteger: aString
	"aString should have the format 1234 (without 0x)"
	^ ('16r', aString) asNumber