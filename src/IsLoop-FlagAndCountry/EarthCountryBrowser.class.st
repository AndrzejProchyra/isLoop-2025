Class {
	#name : 'EarthCountryBrowser',
	#superclass : 'SpPresenterWithModel',
	#instVars : [
		'countryCode',
		'countryList',
		'countryFlag'
	],
	#category : 'IsLoop-FlagAndCountry',
	#package : 'IsLoop-FlagAndCountry'
}

{ #category : 'initialization' }
EarthCountryBrowser >> connectPresenters [

	countryList whenSelectedItemChangedDo: [ :item |
		self onCountrySelected: item ]
]

{ #category : 'layout' }
EarthCountryBrowser >> defaultLayout [

	^ SpBoxLayout newTopToBottom
		  add: (SpBoxLayout newLeftToRight
				   add: countryList expand: true;
				   add: countryCode width: 40)
		  height: self class toolbarHeight;
		  add: countryFlag height: 350;
		  yourself
]

{ #category : 'as yet unclassified' }
EarthCountryBrowser >> flagForCountryCode: aString [

	| request pngArray |
	request := ZnClient new.
	request get:
		'https://flagcdn.com/w320/' , aString asLowercase , '.png'.
	request isSuccess ifTrue: [
		pngArray := request response contents.
		^ ImageReadWriter formFromStream: (ReadStream on: pngArray) ].
	^ BorderedMorph new asForm
]

{ #category : 'initialization' }
EarthCountryBrowser >> initializePresenters [

	super initializePresenters.

	countryList := self newDropList.
	countryList display: [ :item | item name ].
	countryList sortingBlock: [ :a :b | a model name < b model name ].
	countryList items: self model countries.

	countryCode := self newTextInput.
	countryCode editable: false.
	countryCode text: '   --   '.

	countryFlag := self newImage
]

{ #category : 'as yet unclassified' }
EarthCountryBrowser >> onCountrySelected: countryItem [

	countryCode text: '    ' , countryItem code.
	self showFlag: countryItem
]

{ #category : 'as yet unclassified' }
EarthCountryBrowser >> showFlag: countryItem [

	countryFlag image: (self flagForCountryCode: countryItem code)
]
