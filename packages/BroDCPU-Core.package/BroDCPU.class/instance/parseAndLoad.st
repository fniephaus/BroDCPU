initialize-release
parseAndLoad
	self loadROM: (BroParser parse: self editorTextMorph text asString).