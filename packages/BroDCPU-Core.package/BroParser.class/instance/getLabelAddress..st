parsing
getLabelAddress: aLabel
	self isExploringLabels ifTrue: [
		"labels aren't available. this method was called for determining size of instruction"
		^ -1 ].
	^ self labels at: aLabel
	