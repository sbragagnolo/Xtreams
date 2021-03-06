*Xtreams-TransformsTests-transforming
testWriteCollectingMultipleBufferSize
	| data |
	data := (1 to: DefaultBufferSize + 500) collect: [ :i | i \\ 16 ].
	self timeout: 1 seconds
		server:
			[(self output collecting: [:e | e * e])
				write: data;
				close.
			true]
		client: [(self input read: data size) = (ByteArray withAll: (data collect: [:e | e * e]))]