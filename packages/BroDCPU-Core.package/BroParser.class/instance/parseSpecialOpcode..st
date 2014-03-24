parsing
parseSpecialOpcode: aString 
	^ self specialOperations at: aString asSymbol