legacy API
upToAnyOf: subcollection
	^(source ending: [:element | subcollection includes: element] inclusive: false) rest