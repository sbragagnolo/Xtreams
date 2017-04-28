initialize-release
close
	| saved |
	source streamingReadClose.
	saved := cache.
	cache := nil.
	saved == nil ifFalse: [ saved recycle ].