Class {
	#name : 'EVisitor',
	#superclass : 'Object',
	#instVars : [
		'bindings'
	],
	#category : 'IsLoopExpressions',
	#package : 'IsLoopExpressions'
}

{ #category : 'accessing' }
EVisitor >> at: anId put: aValue [

	bindings at: anId put: aValue
]

{ #category : 'initialization' }
EVisitor >> initialize [

	super initialize.
	bindings := Dictionary new
]

{ #category : 'as yet unclassified' }
EVisitor >> visitConstant: anEConstant [ 
	^ self subclassResponsibility
]
