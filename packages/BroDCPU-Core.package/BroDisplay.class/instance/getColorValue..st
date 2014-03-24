accessing
getColorValue: anAddress
	self usesDefaultColorPalette
		ifTrue: [ ^ self class defaultColorPalette at: anAddress + 1 ];
		ifFalse: [ ^ self ram get: self colorPaletteAddress + anAddress ].