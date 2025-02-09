Class {
	#name : 'EPrinterVisitorTest',
	#superclass : 'TestCase',
	#category : 'IsLoopExpressions-Tests',
	#package : 'IsLoopExpressions-Tests'
}

{ #category : 'tests' }
EPrinterVisitorTest >> testPrintConstant [

	self
		assert: (EConstant constant5 accept: EPrintingVisitor new)
		equals: '5'
]

{ #category : 'tests' }
EPrinterVisitorTest >> testPrintVariable [

	| variable visitor |
	variable := EVariable id: #x.
	visitor := EPrintingVisitor new at: #x put: 7.

	self assert: (variable accept: visitor) equals: 7
]
