Class {
	#name : 'EDivision',
	#superclass : 'EBinaryExpression',
	#category : 'IsLoopExpressions',
	#package : 'IsLoopExpressions'
}

{ #category : 'as yet unclassified' }
EDivision >> evaluateWith: anObject [

	^ (left evaluateWith: nil) / (right evaluateWith: nil)
]

{ #category : 'printing' }
EDivision >> operatorString [

	^ ' / '
]
