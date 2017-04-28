initialization-release
setUp
	fileSystem := FileSystem memory.
	file := fileSystem workingDirectory / (self class name , '-' , testSelector).
	super setUp.