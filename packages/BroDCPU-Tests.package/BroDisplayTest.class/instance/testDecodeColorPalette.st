tests
testDecodeColorPalette
	| color |
	color := self display decodeColorPalette: 2r0000100011000011.
	self
		assert: ((color red) - (8/15)) < 0.01;
		assert: ((color green) - (12/15)) < 0.01;
		assert: ((color blue) - (3/15)) < 0.01.