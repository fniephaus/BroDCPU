accessing
get: anAddress
	^ ((1 to: self class ramSize) includes: anAddress + 1)
		ifTrue: [ self ram at: anAddress + 1 ]
		ifFalse: [ self error: 'Address ', anAddress, ' does not exist in RAM' ]