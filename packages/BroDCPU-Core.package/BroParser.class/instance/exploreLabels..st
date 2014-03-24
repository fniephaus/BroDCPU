parsing
exploreLabels: aString
	| stream currentLine currentAddress label allLabels |
	self isExploringLabels: true.
	stream := ReadStream on: aString.
	currentAddress := 0.
	allLabels := Dictionary new.
	[ (currentLine := stream nextLine) notNil ] whileTrue: [
		currentLine := self cleanLine: currentLine.
		label := self extractLabel: currentLine.
		label ifNotNil: [
			allLabels at: label put: currentAddress.
			currentLine := self removeLabel: currentLine ].
		(self isEmptyOrComment: currentLine) ifFalse: [
			currentAddress := currentAddress + (self getWordCount: currentLine) ]].
	self isExploringLabels: false.
	 ^ allLabels