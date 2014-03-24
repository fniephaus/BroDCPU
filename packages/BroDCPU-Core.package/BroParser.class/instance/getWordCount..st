help-functions
getWordCount: aString
	| cleanedLine |
	cleanedLine := self removeLabel: aString.
	(self isEmptyOrComment: cleanedLine) ifTrue: [ ^ 0 ].
	^ (self parseLine: cleanedLine) size