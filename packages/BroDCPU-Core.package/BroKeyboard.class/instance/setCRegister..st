interrupts
setCRegister: aBroRegisterBank
	(aBroRegisterBank get: 16r1) = self characterBuffer
		 ifTrue: [ aBroRegisterBank set: 16r2 to: 16r1 ]
		 ifFalse: [ aBroRegisterBank set: 16r2 to: 16r0 ].
	self characterBuffer: 0.