parsing
getMemoryAddressOfSum: anAddress
	"[ register + x ] or [ register + label ]"
	| summands registerOrSP nextWord |
	summands := self getSummands: anAddress.
	registerOrSP := summands at: 1.
	nextWord := summands at: 2.
	^ registerOrSP asSymbol = #SP
		ifTrue: [
			Array with: 16r1a with: nextWord ]
		ifFalse: [
			(self values includesKey: registerOrSP) 
				ifTrue: [
					Array with: (16r10 + self values at: registerOrSP) with: nextWord ]
				ifFalse: [
					"Might occure when programmer tries to add to constants which is not specified"
					self error: 'Unrecognized Memory Address' ]]