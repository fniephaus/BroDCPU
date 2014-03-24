initialize-release
initializeHardware 
	"add DummyDevices because some ROMs fail to check first and last hardware slot"
	self cpu addDevice: BroNullDevice new.
	self
		setupDisplay;
		setupKeyboard;
		setupClock.
	self cpu addDevice: BroNullDevice new.