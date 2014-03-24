initialize-release
setupEditor
	self editorTextMorph: (BroEditor on: self with: self keyboard).
	self editorTextMorph
		width: self display width;
		height: self class editorHeight;
		position: self display position + (0 @ (self display height + self class buttonHeight)).
	self display addMorph: self editorTextMorph.