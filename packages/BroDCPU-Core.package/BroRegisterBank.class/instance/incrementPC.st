accessing
incrementPC
	self pc: (BroDCPU maskTo16Bit: self pc + 1)