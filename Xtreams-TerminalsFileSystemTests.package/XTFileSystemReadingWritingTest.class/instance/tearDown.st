initialize-release
tearDown
	super tearDown.
	[file delete] ifError: [].