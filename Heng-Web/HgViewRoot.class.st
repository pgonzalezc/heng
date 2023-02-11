Class {
	#name : #HgViewRoot,
	#superclass : #WAComponent,
	#category : #'Heng-Web-Html'
}

{ #category : #testing }
HgViewRoot class >> canBeRoot [ 

	^ true
]

{ #category : #rendering }
HgViewRoot >> renderContentOn: html [

	html heading level: 4; with: 'Hello Heng...'
]
