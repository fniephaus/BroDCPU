removing
removeLabel: aString
	| cleanedString matcher |
	matcher := RxMatcher forString: '\:([^\s]*)(\s(.*))*'.
	^ (matcher matches: aString)
		ifTrue: [
			"label and instruction"
			matcher subexpressions size > 2
				ifTrue: [
					cleanedString := matcher subexpression: 3.
					cleanedString withBlanksTrimmed ]
				ifFalse: [
					"only label"
					'' ]]
		ifFalse: [
			"no label"
			aString ]