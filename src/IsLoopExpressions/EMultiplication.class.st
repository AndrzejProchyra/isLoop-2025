Class {
	#name : 'EMultiplication',
	#superclass : 'EExpression',
	#instVars : [
		'right',
		'left'
	],
	#category : 'IsLoopExpressions',
	#package : 'IsLoopExpressions'
}

{ #category : 'public access' }
EMultiplication >> evaluate [

	^ left evaluate * right evaluate
]

{ #category : 'accessing' }
EMultiplication >> left: anExpression [

	left := anExpression
]

{ #category : 'accessing' }
EMultiplication >> right: anExpression [

	right := anExpression
]
