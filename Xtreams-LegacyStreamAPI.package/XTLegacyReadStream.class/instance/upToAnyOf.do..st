legacy API
upToAnyOf: subcollection do: aBlock
	^(source ending: [:element | (subcollection includes: element) and: [aBlock value: element. true]] inclusive: false) rest