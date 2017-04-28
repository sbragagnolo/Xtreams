initialize-release
setUp

	file := FileSystem disk workingDirectory / (self class name , '-' , testSelector).
	output := file writing.
	input := nil