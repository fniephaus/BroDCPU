initialize-release
initialize
	super initialize.
	self
		color: Color white;
		extent: self class dimension;
		setAddresses;
		cycles: 1;
		usesDefaultFont: true;
		usesDefaultColorPalette: true;
		startStepping.