tests
testDetectHardware
	self cpu
		addDevice: BroClock new;
		addDevice: BroDisplay new;
		addDevice: BroKeyboard new;
		addDevice: BroNullDevice new;
		addDevice: BroNullDevice new.
	self
		assert: (self cpu detectHardware: BroClock) class hardwareID = BroClock hardwareID;
		assert: (self cpu detectHardware: BroDisplay) class hardwareID = BroDisplay hardwareID;
		assert: (self cpu detectHardware: BroKeyboard) class hardwareID = BroKeyboard hardwareID.