initialize-release
initialize
	super initialize.
	self
		initializeKeyMapping;
		characterBuffer: 0;
		areInterruptsEnabled: false.
