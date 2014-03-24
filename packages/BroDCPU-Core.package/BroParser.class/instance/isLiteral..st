help-functions
isLiteral: aString
	^ ((RxMatcher forString: '0X(\w*)') matches: aString) or: [(RxMatcher forString: '(-*\d*)') matches: aString]