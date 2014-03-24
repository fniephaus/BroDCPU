initialize-release
loadROM: aRom
	self cpu terminate.
	self cpu: BroCPU new.
	self reconnectHardware.
	self cpu ram setBulk: 0 to: aRom.
	self cpu mainloopProcess: [ self cpu mainLoop ] newProcess.
	self cpu mainloopProcess name: 'BroDCPU';
		 resume.
	ActiveHand newKeyboardFocus: self keyboard.