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
