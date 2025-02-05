Class {
	#name : 'EVariable',
	#superclass : 'EExpression',
	#instVars : [
		'id'
	],
	#category : 'IsLoopExpressions',
	#package : 'IsLoopExpressions'
}

{ #category : 'accessing' }
EVariable class >> id: aSymbol [

	^ self new id: aSymbol
]

{ #category : 'as yet unclassified' }
EVariable >> evaluateWith: aBindingDictionary [

	^ aBindingDictionary at: id
]

{ #category : 'as yet unclassified' }
EVariable >> evaluateWithTemp: aBindingDictionary [

	^ aBindingDictionary at: id
]

{ #category : 'accessing' }
EVariable >> id: aString [

	id := aString
]
