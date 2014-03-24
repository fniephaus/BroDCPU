main-loop
executeOperation: anInstruction
	"check if operation exists"
	((1 to: self class operationAmount) includes: (anInstruction first) + 1)
		ifTrue: [
			"anInstruction = (opcode b a)"
			| codeBlock |
			codeBlock := self operations at: (anInstruction first) + 1.
			codeBlock value: (anInstruction third) value: (anInstruction second) ]
		ifFalse: [ self error: 'Operation ', (anInstruction first) + 1, ' does not exist' ].