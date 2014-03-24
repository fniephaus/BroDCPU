parsing
parseLine: aString
	| cleanedString subexpressions allWords |
	allWords := OrderedCollection new.
	cleanedString := self removeLabel: (self cleanLine: aString).
	(self isEmptyOrComment: cleanedString) ifTrue: [
		^ allWords ].
	subexpressions := self extractSubexpressions: cleanedString.
	^ (subexpressions at: 1) = #DAT
		ifTrue: [
			self convertDATInstructionToWords: subexpressions ]
		ifFalse: [
			subexpressions size = 3
				ifTrue: [
					self parseNormalInstruction: subexpressions ]
				ifFalse: [
					self parseSpecialInstruction: subexpressions ]]