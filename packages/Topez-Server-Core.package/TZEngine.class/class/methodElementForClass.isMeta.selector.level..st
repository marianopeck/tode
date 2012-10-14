metacello
methodElementForClass: aClass isMeta: isMeta selector: selector level: level

	| element |
	element := TZMethodElement new
        isMeta: isMeta;
        proxyClass: aClass;
        proxyClassName: aClass name;
        selector: selector;
        category: (aClass categoryOfSelector: selector asSymbol);
        setSource;
        yourself.
	^self toString: element level: level