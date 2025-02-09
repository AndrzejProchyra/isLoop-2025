Class {
	#name : 'EPrintingVisitorTest',
	#superclass : 'TestCase',
	#category : 'IsLoopExpressions-Tests',
	#package : 'IsLoopExpressions-Tests'
}

{ #category : 'tests' }
EPrintingVisitorTest >> testPrintAddition [

	| result |
	result := EAddition fivePlusThree accept: EPrintingVisitor new.

	self assert: result equals: '( 5 + 3 )'
]

{ #category : 'tests' }
EPrintingVisitorTest >> testPrintComplexExpression [

	| expression |
	expression := EDivision
		              numerator:
		              (EAddition
			               left: EConstant constant5
			               right: EConstant constant3)
		              denominator: (ERaisingToPower
				               left: (EConstant new value: 9)
				               right: (EConstant value: 7)).

	self
		assert: (expression accept: EPrintingVisitor new)
		equals: '( ( 5 + 3 ) / ( 9 ^ 7 ) )'
]

{ #category : 'tests' }
EPrintingVisitorTest >> testPrintConstant [

	self
		assert: (EConstant constant5 accept: EPrintingVisitor new)
		equals: '5'
]

{ #category : 'tests' }
EPrintingVisitorTest >> testPrintMultiplication [

	self
		assert:
		(EMultiplication fiveTimesThree accept: EPrintingVisitor new)
		equals: '( 5 * 3 )'
]

{ #category : 'tests' }
EPrintingVisitorTest >> testPrintVariable [

	| variable visitor |
	variable := EVariable id: #x.
	visitor := EPrintingVisitor new at: #x put: 7.

	self assert: (variable accept: visitor) equals: 7
]
