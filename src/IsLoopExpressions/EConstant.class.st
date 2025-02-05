Class {
	#name : 'EConstant',
	#superclass : 'EExpression',
	#instVars : [
		'value'
	],
	#category : 'IsLoopExpressions',
	#package : 'IsLoopExpressions'
}

{ #category : 'as yet unclassified' }
EConstant class >> constant3 [

	<sampleInstance>
	^ self value: 3
]

{ #category : 'as yet unclassified' }
EConstant class >> constant5 [

	<sampleInstance>
	^ self value: 5
]

{ #category : 'accessing' }
EConstant class >> value: anInteger [

	^ self new value: anInteger
]

{ #category : 'public access' }
EConstant >> evaluate [

	^ value
]

{ #category : 'printing' }
EConstant >> printOn: aStream [

	aStream print: value
]

{ #category : 'accessing' }
EConstant >> value: anInteger [

	value := anInteger
]
