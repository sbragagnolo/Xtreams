baselines
baseline131: spec 
	<version: '1.3.1-baseline'>
        
	spec for: #common do: [
		spec blessing: #baseline.
		spec repository: 'http://www.squeaksource.com/Xtreams'.
		spec 
			package: 'Xtreams-Support';
			package: 'Xtreams-Core' with: [ spec requires: 'Xtreams-Support' ];
			package: 'Xtreams-Terminals';
			package: 'Xtreams-Transforms';
			package: 'Xtreams-Substreams';
			package: 'Xtreams-CoreTests' with: [ spec requires: 'Xtreams-Core' ];
			package: 'Xtreams-TerminalsTests' with: [ spec requires: 'Xtreams-Terminals' ];
			package: 'Xtreams-TransformsTests' with: [ spec requires: 'Xtreams-Transforms' ];
			package: 'Xtreams-SubstreamsTests' with: [ spec requires: 'Xtreams-Substreams' ].
		spec
			group: 'default' with: #('Full Tests');
			group: 'Core' with: #(
				'Xtreams-Support'
				'Xtreams-Core'
				'Xtreams-Terminals'
				'Xtreams-Transforms'
				'Xtreams-Substreams'
				);
			group: 'Tests' with: #(
				'Xtreams-CoreTests'
				'Xtreams-TerminalsTests'
				'Xtreams-TransformsTests'
				'Xtreams-SubstreamsTests'
				);
			group: 'Full' with: #('Core');
			group: 'Full Tests' with: #('Full' 'Tests') ].
	spec for: #squeakCommon do: [
		spec project: 'FFI' with: [
			spec
				className: 'ConfigurationOfFFI';
				repository: 'http://www.squeaksource.com/MetacelloRepository'].
		spec
			package: 'Xtreams-Parsing';
			package: 'Xtreams-ParsingTests' with: [ spec requires: 'Xtreams-Parsing'];
			package: 'Xtreams-Xtras' with: [
				spec 
					requires: #('FFI') ];
			package: 'Xtreams-XtrasTests' with: [ spec requires: 'Xtreams-Xtras' ].
		spec
			group: 'Core' with: #('Xtreams-Parsing');
			group: 'Tests' with: #('Xtreams-ParsingTests');
			group: 'Full' with: #('Xtreams-Xtras');
			group: 'Full Tests' with: #('Xtreams-XtrasTests') ].
	spec for: #'pharo3.x' do: [
		"No Xtras until there is a valid FFI available - spec removeProject: 'FFI'."
		spec 
			group: 'default' overrides: #('Core Tests');
			group: 'Core Tests' with: #('Core' 'Tests').].
	spec for: #'pharo4.x' do: [
		spec 
			package: 'Xtreams-TerminalsFileSystem' with: 'Xtreams-TerminalsFileSystem.pharo40';
			package: 'Xtreams-Terminals' with: 'Xtreams-Terminals.pharo40'.
		"No Xtras until there is a valid FFI available - spec removeProject: 'FFI'."
		spec
			group: 'default' overrides: #('Core Tests');
			group: 'Core Tests' with: #('Core' 'Tests').].
	spec for: #gemstone do: [
		spec 
			package: 'Xtreams-Support' with: [
				spec file: 'Xtreams-Support.gemstone'];
			package: 'Xtreams-Terminals' with: [
				spec file: 'Xtreams-Terminals.gemstone'];
			package: 'Xtreams-TerminalsTests' with: [
				spec file: 'Xtreams-TerminalsTests.gemstone'];
			yourself.
	].
	spec for: #squeak do: [
		spec package: 'Xtreams-Xtras' with: [
			spec 
				requires: #('FFI');
				preLoadDoIt: #preLoadSqueakEnsureGlobalUnderscoreSelectors;
				postLoadDoIt: #postLoadSqueakRestoreGlobalUnderscoreSelectors ] ].
	spec for: #FileDirectory do: [
		spec
			package: 'Xtreams-TerminalsFileDirectory' with: [ spec requires: 'Xtreams-Terminals'];
			package: 'Xtreams-TerminalsFileDirectoryTests' with: [ spec requires: 'Xtreams-TerminalsTests'].
		spec
			group: 'Core' with: #('Xtreams-TerminalsFileDirectory');
			group: 'Tests' with: #('Xtreams-TerminalsFileDirectoryTests') ].
	spec for: #FileSystem do: [
		spec
			package: 'Xtreams-TerminalsFileSystem' with: [ spec requires: 'Xtreams-Terminals'];
			package: 'Xtreams-TerminalsFileSystemTests' with: [ spec requires: 'Xtreams-TerminalsTests'].
		spec
			group: 'Core' with: #('Xtreams-TerminalsFileSystem');
			group: 'Tests' with: #('Xtreams-TerminalsFileSystemTests') ].