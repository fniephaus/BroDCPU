help-functions
isMemoryAddress: aString
	^ (RxMatcher forString: '\[(.*)\]') matches: aString	