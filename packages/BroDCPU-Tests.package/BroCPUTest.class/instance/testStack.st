tests
testStack
	self cpu
		push: 16r1234;
		push: 16r2345.
	self assert: (16r2345 = self cpu pop).
	self cpu push: 16r3456.
	self
		assert: (16r3456 = self cpu pop);
		assert: (16r1234 = self cpu pop).
	self cpu push: 16r8888.
	self
		assert: (16rffff = self registerBank sp);
		assert: (16r8888 = (self ram get: 16rffff)).