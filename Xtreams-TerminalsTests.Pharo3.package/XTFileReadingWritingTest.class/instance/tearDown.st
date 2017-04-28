initialize-release
tearDown

	input ifNotNil: [:f | f close].
	output ifNotNil: [:f | f close].
	[file delete] ifError: []