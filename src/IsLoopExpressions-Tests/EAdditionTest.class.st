Class {
	#name : 'EAdditionTest',
	#superclass : 'TestCase',
	#category : 'IsLoopExpressions-Tests',
	#package : 'IsLoopExpressions-Tests'
}

{ #category : 'tests' }
EAdditionTest >> testEvaluate [

	| ep1 ep2 |
	ep1 := EConstant new value: 5.
	ep2 := EConstant new value: 3.
	self
		assert: ((EAddition new
				  right: ep1;
				  left: ep2) evaluateWith: nil)
		equals: 8
]

{ #category : 'tests' }
EAdditionTest >> testEvaluateNegated [

	| ep1 ep2 |
	ep1 := EConstant constant5.
	ep2 := EConstant constant3.
	self
		assert: ((EAddition left: ep1 right: ep2) negated evaluateWith: nil)
		equals: -8
]

{ #category : 'tests' }
EAdditionTest >> testEvaluateWithClassCreationMessage [

	| ep1 ep2 |
	ep1 := EConstant value: 5.
	ep2 := EConstant value: 3.
	self
		assert: ((EAddition left: ep1 right: ep2) evaluateWith: nil)
		equals: 8
]

{ #category : 'tests' }
EAdditionTest >> testEvaluateWithNegation [

	| ep1 ep2 |
	ep1 := ENegation new expression: (EConstant new value: 5).
	ep2 := EConstant new value: 3.
	self
		assert: ((EAddition new
				  right: ep1;
				  left: ep2) evaluateWith: Dictionary new)
		equals: -2
]

{ #category : 'tests' }
EAdditionTest >> testEvaluateWithVariables [

	| x y |
	x := EVariable id: #x.
	y := EVariable id: #y.

	self
		assert: ((EAddition left: x right: y) evaluateWith: {
					 (#x -> 5).
					 (#y -> 3) } asDictionary)
		equals: 8
]

{ #category : 'tests' }
EAdditionTest >> testPrinting [

	self assert: EAddition fivePlusThree printString equals: '( 5 + 3 )'
]
