Class {
	#name : 'EExpression',
	#superclass : 'Object',
	#category : 'IsLoopExpressions',
	#package : 'IsLoopExpressions'
}

{ #category : 'visiting' }
EExpression >> accept: aVisitor [

	self subclassResponsibility
]

{ #category : 'as yet unclassified' }
EExpression >> evaluateWith: aBindingDictionary [

	| visitor |
	visitor := EEvaluatingVisitor new.
	visitor bindings: aBindingDictionary.
	^ self accept: visitor
]

{ #category : 'arithmetic' }
EExpression >> negated [

	^ ENegation new expression: self
]
