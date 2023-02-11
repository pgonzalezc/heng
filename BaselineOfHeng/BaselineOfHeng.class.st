Class {
	#name : #BaselineOfHeng,
	#superclass : #BaselineOf,
	#category : #BaselineOfHeng
}

{ #category : #'as yet unclassified' }
BaselineOfHeng >> BaselineOf: spec [

	<baseline>
	spec for: #common do: [ 
		self seaside: spec.
		self p3: spec.

		spec
			package: 'Heng-Web' with: [ spec requires: #( 'Seaside3' ); requires: 'P3' ];
			package: 'Heng-Web-Test' ].
	spec
		group: 'Core' with: #( 'Heng-Web' );
		group: 'Test' with: #( 'Heng-Web-Test' );
		group: 'default' with: #( 'Core' 'Test' )
]

{ #category : #'as yet unclassified' }
BaselineOfHeng >> p3: spec [

	spec
			baseline: 'P3'
        	with: [ 
				spec
					loads: #('default');
					repository: 'github://svenvc/P3:master/repository' ]
]

{ #category : #'as yet unclassified' }
BaselineOfHeng >> seaside: spec [

	spec
			baseline: 'Seaside3'
        	with: [ 
				spec
					loads: #('default');
					repository: 'github://SeasideSt/Seaside:master/repository' ]
]
