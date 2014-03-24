help-functions
isSum: aString
	^ (RxMatcher forString: '(.*)\s*\+\s*(.*)') matches: aString