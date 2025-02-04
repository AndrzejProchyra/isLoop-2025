Class {
	#name : 'EAddition',
	#superclass : 'EExpression',
	#instVars : [
		'right',
		'left'
	],
	#category : 'IsLoopExpressions',
	#package : 'IsLoopExpressions'
}

{ #category : 'public access' }
EAddition >> evaluate [

	^ left evaluate + right evaluate
]

{ #category : 'accessing' }
EAddition >> left: anExpression [

	left := anExpression
]

{ #category : 'accessing' }
EAddition >> right: anExpression [

	right := anExpression
]
