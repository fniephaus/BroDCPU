interrupts
memMapFont: bRegister
	self usesDefaultFont: bRegister = 0.
	bRegister ~= 0 ifTrue: [ self fontAddress: bRegister ].