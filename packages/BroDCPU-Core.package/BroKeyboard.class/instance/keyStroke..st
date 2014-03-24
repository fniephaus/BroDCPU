event handling
keyStroke: anEvent
	| keyValue |
	keyValue := anEvent keyValue.
	"standard printable characters"
	(self class printableCharacterRange includes: keyValue)
		ifTrue: [ self characterBuffer: keyValue ]
		ifFalse: [
			(self keyMapping includesKey: anEvent keyString asSymbol)
				ifTrue: [	self characterBuffer: (self keyMapping at: anEvent keyString asSymbol) ]].
	self areInterruptsEnabled ifTrue: [
		self cpu interruptQueue enqueueInterrupt: self interruptMessage ].