parsing
getMemoryAddressOfRegister: anAddress
	"[ x ] or [ label ]"
	| nextWord |
	^ (anAddress asSymbol = #SP) 
		ifTrue: [
			Array with: 16r19 ]
		ifFalse: [
			(self values includesKey: anAddress)
				ifTrue: [
					Array with: (16r8 + self values at: anAddress) ]
				ifFalse: [
					nextWord := self getLabelAddress: anAddress.
					Array with: 16r1e with: nextWord ]]