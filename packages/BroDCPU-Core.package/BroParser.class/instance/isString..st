help-functions
isString: aString
	^ aString isString and: [(aString first = $") and: [aString last = $"]]