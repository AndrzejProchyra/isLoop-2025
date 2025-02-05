Class {
	#name : 'ERaisingToPower',
	#superclass : 'EBinaryExpression',
	#category : 'IsLoopExpressions',
	#package : 'IsLoopExpressions'
}

{ #category : 'as yet unclassified' }
ERaisingToPower >> evaluate [

	^ left evaluate raisedTo: right evaluate
]

{ #category : 'printing' }
ERaisingToPower >> operatorString [

	^ ' ^ '
]
