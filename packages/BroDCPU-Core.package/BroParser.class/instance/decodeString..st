help-functions
decodeString: aString
	| subString |
	"Remove leading and trailing quotation marks"
	subString := aString copyFrom: 2 to: aString size - 1.
	^ subString asByteArray