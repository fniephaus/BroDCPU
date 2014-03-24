drawing
drawOn: aCanvas
	super drawOn: aCanvas.
	aCanvas
		translateBy: self bounds origin
		clippingTo: self bounds
		during: [ :canvas |
			0 to: (self class charactersPerColumn - 1) do: [ :y |
				0 to: (self class charactersPerRow - 1) do: [ :x |
					self drawVideoCell: (self getRAMValue: y * 32 + x) at: x @ y on: canvas ]]].