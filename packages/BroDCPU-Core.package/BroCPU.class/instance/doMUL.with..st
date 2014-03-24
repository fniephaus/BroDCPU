operations
doMUL: b with: a
	| result |
	result := (self getWordFrom: a) * (self getWordFrom: b).
	self registerBank ex: (result bitShift: -16).
	self setWordAt: b to: result.