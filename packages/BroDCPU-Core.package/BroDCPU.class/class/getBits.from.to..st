help-functions
getBits: aWord from: aStart to: anEnd.
	"Returns bits in range aStart to anEnd"
	aStart <= anEnd
		ifTrue: [ ^ (aWord \\ (2r10 bitShift: (15 - aStart))) bitShift: (15 - anEnd) negated ]
		ifFalse: [ ^ 0 ]