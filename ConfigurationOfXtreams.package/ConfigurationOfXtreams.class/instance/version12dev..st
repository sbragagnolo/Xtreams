versions
version12dev: spec
	<version: '1.2dev' imports: #('1.2')>

	spec for: #common do: [
		spec blessing: #development.
		spec author: 'Nicolas Cellier'.
		spec description: 'The development branch - same as release now' ].
	