Class {
	#name : #BaselineOfHeng,
	#superclass : #BaselineOf,
	#category : #BaselineOfHeng
}

{ #category : #'as yet unclassified' }
BaselineOfHeng >> BaselineOf: spec [

	<baseline>
	spec for: #common do: [ 
		spec
			package: 'Heng-Web' with: [ spec requires: #( 'SeasideSt' ) ];
			package: 'Heng-Web-Test' ].
	spec
		group: 'Core' with: #( 'Heng-Web' );
		group: 'Test' with: #( 'Heng-Web-Test' );
		group: 'default' with: #( 'Core' 'Test' )
]
