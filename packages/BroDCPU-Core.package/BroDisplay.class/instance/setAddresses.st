accessing
setAddresses
	self
		videoRAMAddress: self class defaultVideoRAMAddress;
		fontAddress: self class defaultFontAddress;
		colorPaletteAddress: self class defaultColorPaletteAddress;
		usesDefaultFont: true;
		usesDefaultColorPalette: true.