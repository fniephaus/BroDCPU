accessing
increment: aRegister
	self set: aRegister to: (BroDCPU maskTo16Bit: (self get: aRegister) + 1).