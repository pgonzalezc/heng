Class {
	#name : #TestHgModelA,
	#superclass : #TestCase,
	#category : #'Heng-Web-Test'
}

{ #category : #tests }
TestHgModelA >> testHgModelAInitialization [

	self assert: '' equals: HgModelA new a
]
