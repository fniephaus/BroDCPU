help-functions
convertDATInstructionToWords: subexpressions
	| allWords outputWords |
	allWords := self sanitizeDATString: subexpressions.
	outputWords := OrderedCollection new.
	allWords do: [:datLiteral |
		| value |
		value := self getLiteral: datLiteral.
		(value isKindOf: ByteArray)
			ifTrue: [ outputWords addAll: value]
			ifFalse: [ outputWords add: value ]].
	^ outputWords