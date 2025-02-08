Class {
	#name : 'EVariableTest',
	#superclass : 'TestCase',
	#category : 'IsLoopExpressions-Tests',
	#package : 'IsLoopExpressions-Tests'
}

{ #category : 'tests' }
EVariableTest >> testValueOfX [

	self
		assert:
		((EVariable id: #x) evaluateWith: { (#x -> 10) } asDictionary)
		equals: 10
]

{ #category : 'tests' }
EVariableTest >> testValueOfXInNegation [

	self
		assert:
		((EVariable id: #x) negated evaluateWith:
			 { (#x -> 10) } asDictionary)
		equals: -10
]
