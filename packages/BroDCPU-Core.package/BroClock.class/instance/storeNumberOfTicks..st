interrupts
storeNumberOfTicks: aBroRegisterBank
	self isClockRunning ifTrue: [
			aBroRegisterBank set: 16r2 to: self internalClock ].