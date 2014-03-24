interrupts
handleInterrupt: aBroRegisterBank
	| interruptCode bRegister codeBlock |
	interruptCode := aBroRegisterBank get: 16r0.
	bRegister := aBroRegisterBank get: 16r1.
	codeBlock := self interruptTable at: interruptCode + 1.
	codeBlock value: aBroRegisterBank value: bRegister.