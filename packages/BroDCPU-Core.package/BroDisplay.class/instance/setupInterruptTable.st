interrupts
setupInterruptTable
	self interruptTable: (Array new: 6).
	self interruptTable
		at: 1 put: [ :registerBank :bRegister | self memMapScreen: registerBank with: bRegister ];
		at: 2 put: [ :registerBank :bRegister | self memMapFont: bRegister ];
		at: 3 put: [ :registerBank :bRegister | self memMapPalette: bRegister ];
		at: 4 put: [ :registerBank :bRegister | "Border interrupt not implemented" ];
		at: 5 put: [ :registerBank :bRegister | self memDumpFont: bRegister ];
		at: 6 put: [ :registerBank :bRegister | self memDumpPalette: bRegister ].