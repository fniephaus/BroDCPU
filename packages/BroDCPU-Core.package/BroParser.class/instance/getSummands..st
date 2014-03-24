parsing
getSummands: aString
	| matcher |
	matcher := RxMatcher forString: '(\S*)\s*\+\s*(\S*)'.
	matcher matches: aString withBlanksTrimmed.
	"ensure that the literal value is always the second element in the returning array"
	^ (self values includesKey: (matcher subexpression: 3))
		ifTrue: [
			Array
				with: (matcher subexpression: 3)
				with: (self getLiteral: (matcher subexpression: 2)) ]
		ifFalse: [
			Array
				with: (matcher subexpression: 2)
				with: (self getLiteral: (matcher subexpression: 3)) ]