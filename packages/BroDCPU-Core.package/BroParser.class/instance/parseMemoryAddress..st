parsing
parseMemoryAddress: aString
	| matcher address |
	matcher := RxMatcher forString: '\[(.*)\]'.
	matcher matches: aString.
	address := (matcher subexpression: 2) withBlanksTrimmed.
	^ (self isLiteral: address)
		ifTrue: [
			"[ 0x123 ]"
			self getMemoryAddressAsLiteral: address ]
		ifFalse: [
			self getMemoryAddressAsNonLiteral: address ]