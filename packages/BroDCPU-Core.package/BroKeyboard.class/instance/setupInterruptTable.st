interrupts
setupInterruptTable
	self interruptTable: (Array new: 4).
	self interruptTable
		at: 1 put: [ :registerBank | self clearBuffer ];
		at: 2 put: [ :registerBank | self storeASCII: registerBank ];
		at: 3 put: [ :registerBank | self setCRegister: registerBank ];
		at: 4 put: [ :registerBank | self toggleInterrupts: registerBank ].