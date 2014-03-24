initialize-release
reconnectHardware
	self cpu
		addDevice: BroNullDevice new;
		addDevice: self display;
		addDevice: self keyboard.
	self setupClock.
	self cpu addDevice: BroNullDevice new.
	self keyboard cpu: self cpu.
	self display
		setAddresses;
		ram: self cpu ram.