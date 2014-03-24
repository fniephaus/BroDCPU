help-functions
isEmptyOrComment: aLine
	| matcher |
	matcher := RxMatcher forString: '^(((\s)*)|(\;.*))$'.
	^ matcher matches: aLine