parsing
getMemoryAddressAsNonLiteral: anAddress 
	^ (self isSum: anAddress)
		ifTrue: [ self getMemoryAddressOfSum: anAddress ]
		ifFalse: [ self getMemoryAddressOfRegister: anAddress ]