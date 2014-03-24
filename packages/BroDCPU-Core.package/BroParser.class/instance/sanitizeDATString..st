help-functions
sanitizeDATString: subexpressions
	| DATString |
	DATString := subexpressions at: 2.
	subexpressions size > 2 ifTrue: [
		DATString := DATString, ',', (subexpressions at: 3) ].
	DATString := DATString copyReplaceAll: ', ' with: ','.
	^ DATString subStrings: ','