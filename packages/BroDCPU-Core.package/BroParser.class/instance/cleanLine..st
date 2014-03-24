help-functions
cleanLine: aString
	"removes whitespace and comments and converts to uppercase"
	| cleanedString matcher |
	cleanedString := aString.
	matcher := RxMatcher forString: '([^;]*);.*'.
	(matcher matches: cleanedString) ifTrue: [
		cleanedString := matcher subexpression: 2 ].
	cleanedString := cleanedString withBlanksTrimmed.
	^ cleanedString asUppercase