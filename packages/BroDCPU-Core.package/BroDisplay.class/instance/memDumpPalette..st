interrupts
memDumpPalette: bRegister
	self ram setBulk: bRegister to: self class defaultColorPalette.