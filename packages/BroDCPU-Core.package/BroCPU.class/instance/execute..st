main-loop
execute: anInstruction
	| checkedInstruction |
	self registerBank incrementPC.
	checkedInstruction := anInstruction.
	self skipsNextInstruction ifTrue: [
		self checkForConditional: anInstruction.
		"Make sure that cpu now performs a NOP"
		checkedInstruction at: 16r1 put: self class nopInstructionOpcode ].
	checkedInstruction first isZero
		ifTrue: [ self executeSpecialOperation: checkedInstruction ]
		ifFalse: [ self executeOperation: checkedInstruction ].