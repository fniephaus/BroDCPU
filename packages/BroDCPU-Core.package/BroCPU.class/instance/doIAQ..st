special-operations
doIAQ: a
	(self getWordFrom: a) isZero
		ifTrue: [ self interruptQueue disableQueuing ]
		ifFalse: [ self interruptQueue enableQueuing ].