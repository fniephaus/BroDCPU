interrupts
setupInterruptTable
	self interruptTable: (Array new: 3).
	self interruptTable
		at: 1 put: [ :registerBank | self toggleClock: registerBank ];
		at: 2 put: [ :registerBank | self storeNumberOfTicks: registerBank ];
		at: 3 put: [ :registerBank | self toggleInterrupts: registerBank ].