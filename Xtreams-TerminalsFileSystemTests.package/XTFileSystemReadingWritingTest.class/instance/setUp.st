initialize-release
setUp
	file := FileSystem workingDirectory / (self class name , '-' , testSelector).
	super setUp.