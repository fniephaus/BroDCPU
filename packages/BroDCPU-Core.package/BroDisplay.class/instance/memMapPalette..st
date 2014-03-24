interrupts
memMapPalette: bRegister
	self usesDefaultColorPalette: bRegister = 0.
	bRegister ~= 0 ifTrue: [ self colorPaletteAddress: bRegister ].