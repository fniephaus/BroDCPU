running
setUp
	super setUp.
	self ram: BroRAM new.
	self display: (BroDisplay new: self ram).
	"Setup default font and color palette in ram"
	self display
		usesDefaultFont: false;
		memDumpFont: BroDisplay defaultFontAddress;
		usesDefaultColorPalette: false;
		memDumpPalette: BroDisplay defaultColorPaletteAddress.