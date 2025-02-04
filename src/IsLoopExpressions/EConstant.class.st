Class {
	#name : 'EConstant',
	#superclass : 'EExpression',
	#instVars : [
		'value'
	],
	#category : 'IsLoopExpressions',
	#package : 'IsLoopExpressions'
}

{ #category : 'public access' }
EConstant >> evaluate [

	^ value
]

{ #category : 'accessing' }
EConstant >> value: anInteger [

	value := anInteger
]
