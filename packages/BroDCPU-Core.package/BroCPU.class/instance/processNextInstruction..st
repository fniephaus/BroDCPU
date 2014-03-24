main-loop
processNextInstruction: aWord
	self execute: (self decode: aWord).