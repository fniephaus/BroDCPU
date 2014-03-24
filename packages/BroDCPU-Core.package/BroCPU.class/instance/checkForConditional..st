word-lookup
checkForConditional: anInstruction
	| opcode |
	opcode := anInstruction first.
	"conditional codes should be skipped"
	self skipsNextInstruction: (self class conditionalOpcodeRange includes: opcode).