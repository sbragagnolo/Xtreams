initialize-release
tearDown

	super tearDown.
	[FileDirectory default deleteFileNamed: file pathParts last] ifError: []