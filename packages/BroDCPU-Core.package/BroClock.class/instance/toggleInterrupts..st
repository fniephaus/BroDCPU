interrupts
toggleInterrupts: aBroRegisterBank
	(aBroRegisterBank get: 16r1) isZero
		ifTrue: [
			self areInterruptsEnabled: false ]
		ifFalse: [
			self areInterruptsEnabled: true.
			self interruptMessage: (aBroRegisterBank get: 1) ].