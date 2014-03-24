accessing
set: aRegister to: aWord
	((1 to: self class registerAmount) includes: aRegister + 1)
		ifTrue: [ self generalPurposeRegisters at: aRegister + 1 put: (BroDCPU maskTo16Bit: aWord). ]
		ifFalse: [ self error: 'Register ', aRegister, ' does not exist' ].