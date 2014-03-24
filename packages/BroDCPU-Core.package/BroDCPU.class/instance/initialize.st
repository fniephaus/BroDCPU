initialize-release
initialize
	super initialize.
	"Transparent and same size as Display + Editor"
	self
		extent: BroDisplay dimension + (0 @ (self class buttonHeight + self class editorHeight));
		cpu: BroCPU new;
		initializeHardware;
		setupParseAndLoadButton;
		setupEditor;
		openInWorld.