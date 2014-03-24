interrupts
handleInterrupt: aBroRegisterBank
	| interruptCode codeBlock |
	interruptCode := aBroRegisterBank get: 0.
	codeBlock := self interruptTable at: interruptCode + 1.
	codeBlock value: aBroRegisterBank.