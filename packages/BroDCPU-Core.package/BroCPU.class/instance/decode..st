main-loop
decode: aWord
	"Converts aWord into a array containing (opcode, b, a).
	In bits (in LSB-0 format), a basic instruction has the format: aaaaaabbbbbooooo"
	| valueA valueB opcode |
	valueA := BroDCPU getBits: aWord from: 0 to: 5.
	valueB := BroDCPU getBits: aWord from: 6 to: 10.
	opcode := BroDCPU getBits: aWord from: 11 to: 15.
	^ Array with: opcode with: valueB with: valueA