baselines
baseline100: spec 
	<version: '1.0-baseline'>
        
	spec for: #common do: [
		spec blessing: #baseline ].

	spec for: #squeakCommon do: [
		spec repository: 'http://www.squeaksource.com/Xtreams'.
		spec project: 'FFI' with: [
			spec
				className: 'ConfigurationOfFFI';
				repository: 'http://www.squeaksource.com/MetacelloRepository' ].
		spec 
			package: 'Xtreams-Support';
			package: 'Xtreams-Core';
			package: 'Xtreams-Terminals';
			package: 'Xtreams-Transforms';
			package: 'Xtreams-Substreams';
			package: 'Xtreams-Parsing';
			" --- tests follow --- "
			package: 'Xtreams-CoreTests' with: [ spec requires: 'Xtreams-Core' ];
			package: 'Xtreams-TerminalsTests' with: [ spec requires: 'Xtreams-Terminals' ];
			package: 'Xtreams-TransformsTests' with: [ spec requires: 'Xtreams-Transforms' ];
			package: 'Xtreams-SubstreamsTests' with: [ spec requires: 'Xtreams-Substreams' ];
			package: 'Xtreams-ParsingTests' with: [ spec requires: 'Xtreams-Parsing' ];
			" --- following require FFI --- "
			package: 'Xtreams-Xtras' with: [
				spec 
					requires: #('FFI') ];
			package: 'Xtreams-XtrasTests' with: [ spec requires: 'Xtreams-Xtras' ].
		spec
			group: 'default' with: #('Full Tests');
			group: 'Core' with: #(
				'Xtreams-Support'
				'Xtreams-Core'
				'Xtreams-Terminals'
				'Xtreams-Transforms'
				'Xtreams-Substreams'
				'Xtreams-Parsing');
			group: 'Tests' with: #(
				'Xtreams-CoreTests'
				'Xtreams-TerminalsTests'
				'Xtreams-TransformsTests'
				'Xtreams-SubstreamsTests'
				'Xtreams-ParsingTests');
			group: 'Full' with: #('Core' 'Xtreams-Xtras');
			group: 'Full Tests' with: #('Full' 'Tests' 'Xtreams-XtrasTests') ].
		
	spec for: #squeak do: [
		spec package: 'Xtreams-Xtras' with: [
			spec 
				requires: #('FFI');
				preLoadDoIt: #preLoadSqueakEnsureGlobalUnderscoreSelectors;
				postLoadDoIt: #postLoadSqueakRestoreGlobalUnderscoreSelectors ] ]