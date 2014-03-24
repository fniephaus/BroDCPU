drawing
drawVideoCell: aWord at: aPoint on: aCanvas
	| characterBits videoCell offset |
	videoCell := self decodeVideoCell: aWord.
	characterBits := self getCharacterBits: (videoCell at: self class characterIndex).
	offset := self class scalingFactor * self class cellDimension * aPoint.
	0 to: (self class charactersPerRow - 1) do: [ :currentBit |
		| rectangle cellColor |
		rectangle := ((self class scalingFactor * (self pixelPointAt: currentBit)) + offset) extent: self class scalingFactor.
		(characterBits bitAt: self class charactersPerRow - currentBit) = 1 
			ifTrue: [ cellColor := videoCell at: self class foregroundIndex ]
			ifFalse: [ cellColor := videoCell at: self class backgroundIndex ].
		(self isBlinking: videoCell)
			 ifFalse: [ aCanvas fillRectangle: rectangle color: cellColor ]].