initialize-release
initialize: aCacheLimit
	mutex := TransientSemaphore forMutualExclusion.
	recycled := IdentityDictionary new.
	SequenceableCollection allSubclassesDo: [:aClass | recycled at: aClass put: (Array new: aCacheLimit)]