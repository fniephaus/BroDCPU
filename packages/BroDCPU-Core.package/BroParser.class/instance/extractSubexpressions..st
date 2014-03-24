help-functions
extractSubexpressions: aLine
	| matcher |
	matcher := RxMatcher forString: '(\w\w\w)\s*([^,]*)\s*(,\s*(.*))?'.
	^ (matcher matches: aLine)
		ifTrue: [
			(matcher subexpression: 5) notEmpty
				ifTrue: [
					"normal instruction"
					Array
						with: (matcher subexpression: 2)
						with: (matcher subexpression: 3)
						with: (matcher subexpression: 5) ]
				ifFalse: [
					"special instruction"
					Array
						with: (matcher subexpression: 2)
						with: (matcher subexpression: 3) ]]
		ifFalse: [
			self error: 'Could not extract subexpressions. Invalid syntax.' ]