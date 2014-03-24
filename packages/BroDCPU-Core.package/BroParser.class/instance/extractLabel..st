parsing
extractLabel: aString
	| matcher |
	matcher := RxMatcher forString: '\s*\:([^\s]*)(\s(.*))*'.
	(matcher matches: aString)
		ifTrue: [ ^ (matcher subexpression: 2) asSymbol ]
		ifFalse: [ ^ nil ].