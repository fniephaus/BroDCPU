stack
pop
	| aWord |
	aWord := self ram get: self registerBank sp.
	self registerBank incrementSP.
	^ aWord
