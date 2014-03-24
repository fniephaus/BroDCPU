initialize-release
initializeSpecialOperations
	self specialOperations: Dictionary new.
	self specialOperations
		at: #JSR put: 16r01;
		at: #INT put: 16r0b;
		at: #IAG put: 16r09;
		at: #IAS put: 16r0a;
		at: #RFI put: 16r0b;
		at: #IAQ put: 16r0c;
		at: #HWN put: 16r10;
		at: #HWQ put: 16r11;
		at: #HWI put: 16r12.