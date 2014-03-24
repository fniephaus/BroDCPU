execute
testDoHWI
	"HWI a"
	| instruction display displayAddress newVideoRamAddress |
	newVideoRamAddress := 16r9000.
	self registerBank
		set: 16r0 to: 16r0;
		set: 16r1 to: newVideoRamAddress.
	self cpu
		addDevice: (BroKeyboard new cpu: self cpu);
		addDevice: (BroDisplay new: self ram).
	"find out address of display"
	display := self cpu hardware detect: [ :device |
		(device class hardwareID) = 16r7349f615 ].
	displayAddress := self cpu hardware indexOf: display.
	self registerBank set: 16r5 to: displayAddress.
	instruction := self cpu decode: 2r0001011001000000.
	self cpu execute: instruction.
	self assert: (display videoRAMAddress) = newVideoRamAddress.