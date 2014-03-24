accessing
getFontValue: anAddress
	self usesDefaultFont
		ifTrue: [ ^ self class defaultFont at: anAddress + 1 ];
		ifFalse: [ ^ self ram get: self fontAddress + anAddress ].