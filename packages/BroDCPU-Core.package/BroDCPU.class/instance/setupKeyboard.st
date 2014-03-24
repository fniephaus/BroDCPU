initialize-release
setupKeyboard
	self keyboard: (BroKeyboard new: self cpu).
	self cpu addDevice: self keyboard.
	self keyboard 
		width: self display width;
		height: 0.
	self display addMorph: self keyboard.
	ActiveHand newKeyboardFocus: self keyboard.