initialize-release
setupParseAndLoadButton
	| parseAndLoadButton |
	parseAndLoadButton := SimpleButtonMorph new.
	parseAndLoadButton
		target: self;
		label: 'Parse and Load';
		color: Color green;
		width: self display width;
		height: self class buttonHeight;
		position: self display position + (0 @ self display height);
		actionSelector: #parseAndLoad.
	self display addMorph: parseAndLoadButton.