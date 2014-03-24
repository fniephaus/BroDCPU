stepping
step
	super step.
	self
		cycles: self cycles + 1;
		changed.