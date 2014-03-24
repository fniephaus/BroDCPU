main-loop
executeSpecialOperation: anInstruction
	"check if operation exists"
	((1 to: self class specialOperationAmount) includes: (anInstruction first) + 1)
		ifTrue: [
			"anInstruction = (opcode b a)"
			| codeBlock |
			codeBlock := self specialOperations at: ((anInstruction second) + 1).
			codeBlock value: (anInstruction third) ]
		ifFalse: [ self error: 'Special operation ', (anInstruction first) + 1, ' does not exist' ].