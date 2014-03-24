parsing
parseValue: aString in: aSymbol 
	"aSymbol should be either #a or #b so that we can determine if
	smallLiterals are allowed"
	(self isMemoryAddress: aString)
		ifTrue: [ ^ self parseMemoryAddress: aString ]
		ifFalse: [ ^ self parseNonMemoryAddress: aString in: aSymbol ]