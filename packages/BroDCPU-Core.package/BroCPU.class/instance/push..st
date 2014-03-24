stack
push: aValue
	self registerBank decrementSP.
	self ram set: self registerBank sp to: aValue.

	