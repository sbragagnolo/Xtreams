accessing
get
	cachePosition := 0.
	cacheDataSize := self read: 1 into: cache at: 1.
	^cache at: (cachePosition := 1)