help-functions
concatSubexpressions: opcode b: b a: a
	^ (a bitShift: 10) + (b bitShift: 5) + opcode