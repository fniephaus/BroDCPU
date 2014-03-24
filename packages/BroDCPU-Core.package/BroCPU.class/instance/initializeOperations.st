initialize-release
initializeOperations
	self operations: (Array new: self class operationAmount).
	self operations
		at: 16r02 put: [ :a :b | self doSET: b with: a ];
		at: 16r03 put: [ :a :b | self doADD: b with: a ];
		at: 16r04 put: [ :a :b | self doSUB: b with: a ];
		at: 16r05 put: [ :a :b | self doMUL: b with: a ];
		at: 16r06 put: [ :a :b | self doMLI: b with: a ];
		at: 16r07 put: [ :a :b | self doDIV: b with: a ];
		at: 16r08 put: [ :a :b | self doDVI: b with: a ];
		at: 16r09 put: [ :a :b | self doMOD: b with: a ];
		at: 16r0a put: [ :a :b | self doMDI: b with: a ];
		at: 16r0b put: [ :a :b | self doAND: b with: a ];
		at: 16r0c put: [ :a :b | self doBOR: b with: a ];
		at: 16r0d put: [ :a :b | self doXOR: b with: a ];
		at: 16r0e put: [ :a :b | self doSHR: b with: a ];
		at: 16r0f put: [ :a :b | self doASR: b with: a ];
		at: 16r10 put: [ :a :b | self doSHL: b with: a ];
		at: 16r11 put: [ :a :b | self doIFB: b with: a ];
		at: 16r12 put: [ :a :b | self doIFC: b with: a ];
		at: 16r13 put: [ :a :b | self doIFE: b with: a ];
		at: 16r14 put: [ :a :b | self doIFN: b with: a ];
		at: 16r15 put: [ :a :b | self doIFG: b with: a ];
		at: 16r16 put: [ :a :b | self doIFA: b with: a ];
		at: 16r17 put: [ :a :b | self doIFL: b with: a ];
		at: 16r18 put: [ :a :b | self doIFU: b with: a ];
		at: 16r1b put: [ :a :b | self doADX: b with: a ];
		at: 16r1c put: [ :a :b | self doSBX: b with: a ];
		at: 16r1f put: [ :a :b | self doSTI: b with: a ];
		at: 16r20 put: [ :a :b | self doSTD: b with: a ];
		at: 16r21 put: [ :a :b | self doNOP: b with: a ].