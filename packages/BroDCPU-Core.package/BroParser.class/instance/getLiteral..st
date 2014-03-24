accessing
getLiteral: aString
	| matcher |
	matcher := RxMatcher forString: '-*\d*'.
	^ (matcher matches: aString)
		ifTrue: [
			"decimal value"
			(matcher subexpression: 1) asInteger ]
		ifFalse: [
			matcher := RxMatcher forString: '(0X)(\w*)'.
			(matcher matches: aString)
				ifTrue: [
					"hex value"
					self hexStringToInteger: (matcher subexpression: 3) ]
				ifFalse: [
					(self isString: aString)
						ifTrue: [ self decodeString: aString ]
						ifFalse: [ self getLabelAddress: aString ]]]