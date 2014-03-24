initialize-release
initializeSpecialOperations
	self specialOperations: (Array new: self class specialOperationAmount).
	self specialOperations
		at: 16r02 put: [ :a | self doJSR: a ];
		at: 16r0a put: [ :a | self doIAG: a ];
		at: 16r0b put: [ :a | self doIAS: a ];
		at: 16r0c put: [ :a | self doRFI: a ];
		at: 16r0d put: [ :a | self doIAQ: a ];
		at: 16r11 put: [ :a | self doHWN: a ];
		at: 16r12 put: [ :a | self doHWQ: a ];
		at: 16r13 put: [ :a | self doHWI: a ].