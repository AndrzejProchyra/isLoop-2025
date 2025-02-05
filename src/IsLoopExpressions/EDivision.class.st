Class {
	#name : 'EDivision',
	#superclass : 'EBinaryExpression',
	#category : 'IsLoopExpressions',
	#package : 'IsLoopExpressions'
}

{ #category : 'as yet unclassified' }
EDivision >> evaluate [

	^ left evaluate / right evaluate
]

{ #category : 'printing' }
EDivision >> operatorString [

	^ ' / '
]
