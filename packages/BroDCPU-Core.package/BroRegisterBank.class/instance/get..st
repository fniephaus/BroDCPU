accessing
get: aRegister
	^ ((1 to: self class registerAmount) includes: aRegister + 1)
		ifTrue: [ self generalPurposeRegisters at: aRegister + 1 ]
		ifFalse: [ self error: 'Register ', aRegister, ' does not exist' ]