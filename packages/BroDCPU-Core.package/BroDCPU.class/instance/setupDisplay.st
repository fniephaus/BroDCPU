initialize-release
setupDisplay
	self display: (BroDisplay new: self cpu ram).
	self cpu addDevice: self display.
	self addMorph: self display.
	