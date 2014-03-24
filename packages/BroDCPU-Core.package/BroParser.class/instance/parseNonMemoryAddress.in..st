parsing
parseNonMemoryAddress: value in: aSymbol
	| nextWord valueSymbol |
	^ (self isLiteral: value)
		ifTrue: [
			| literal |
			literal := self getLiteral: value.
			(aSymbol = #a and: [self isSmallLiteral: literal])
				ifTrue: [
					 Array with: (self convertToSmallLiteral: literal) ]
				ifFalse: [
					Array with: 16r1f with: literal ]]
		ifFalse: [
			valueSymbol := value asSymbol.
			(self values includesKey: valueSymbol)
				ifTrue: [
					Array with: (self values at: valueSymbol) ]
				ifFalse: [
					nextWord := self getLabelAddress: valueSymbol.
					Array with: 16r1f with: nextWord ]]