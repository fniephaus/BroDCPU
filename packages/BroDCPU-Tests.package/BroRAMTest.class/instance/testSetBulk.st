tests
testSetBulk
	| values |
	values := #(16r0 16r1 16r2 16r3 16r4 16r5 16r6 16r7 16r8 16r9 16ra 16rb 16rc 16rd 16re 16rf).
	self ram setBulk: 16r1000 to: values.
	values do: [ :aWord |
		self assert: (self ram get: 16r1000 + aWord) = aWord ].