Class {
	#name : 'ERaisingToPower',
	#superclass : 'EBinaryExpression',
	#category : 'IsLoopExpressions',
	#package : 'IsLoopExpressions'
}

{ #category : 'as yet unclassified' }
ERaisingToPower >> evaluateWith: anObject [

	^ (left evaluateWith: nil) raisedTo: (right evaluateWith: nil)
]

{ #category : 'printing' }
ERaisingToPower >> operatorString [

	^ ' ^ '
]
