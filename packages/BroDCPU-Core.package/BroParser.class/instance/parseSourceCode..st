parsing
parseSourceCode: aString
	| stream currentLine binaryInstructions |
	self labels: (self exploreLabels: aString).
	stream := ReadStream on: aString.
	binaryInstructions := OrderedCollection new.
	[ (currentLine := stream nextLine) notNil ] whileTrue: [
		(self parseLine: currentLine) keysAndValuesDo: [ :key :value |
			binaryInstructions add: value ]].
	^ binaryInstructions