accessing
setBulk: anAddress to: aCollection
	"loads words contained in aCollection into the ram starting at anAddress"
	| currentAddress |
	currentAddress := anAddress.
	aCollection do: [ :aWord |
		self set: currentAddress to: aWord.
		currentAddress := currentAddress + 1 ].