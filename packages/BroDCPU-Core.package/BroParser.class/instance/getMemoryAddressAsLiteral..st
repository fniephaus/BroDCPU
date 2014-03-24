parsing
getMemoryAddressAsLiteral: anAddress
	| nextWord | 
	nextWord := self getLiteral: anAddress.
	^ Array with: 16r1e with: nextWord