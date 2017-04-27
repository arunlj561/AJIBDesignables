# AJIBDesignables

[![CI Status](http://img.shields.io/travis/arunlj561/AJIBDesignables.svg?style=flat)](https://travis-ci.org/arunlj561/AJIBDesignables)
[![Version](https://img.shields.io/cocoapods/v/AJIBDesignables.svg?style=flat)](http://cocoapods.org/pods/AJIBDesignables)
[![License](https://img.shields.io/cocoapods/l/AJIBDesignables.svg?style=flat)](http://cocoapods.org/pods/AJIBDesignables)
[![Platform](https://img.shields.io/cocoapods/p/AJIBDesignables.svg?style=flat)](http://cocoapods.org/pods/AJIBDesignables)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

1. Set The default fonts in the whole app in AppDelegate -  	AJFontExtension.sharedInstance.larger = "HelveticaNeue-Italic"
	AJFontExtension.sharedInstance.normal = "HelveticaNeue-BoldItalic"        AJFontExtension.sharedInstance.title = "HelveticaNeue-Medium"
        AJFontExtension.sharedInstance.subtitle = "HelveticaNeue"
        AJFontExtension.sharedInstance.descriptive = "HelveticaNeue-Thin"
        
2. In Storyboard Inspector You will see the fontName property Set it to whatever font you want from the above like -title for "HelveticaNeue-Medium"
<img width="261" alt="screen shot 2017-04-27 at 6 01 52 pm" src="https://cloud.githubusercontent.com/assets/13132856/25483901/6658464e-2b75-11e7-99fb-21481247a33c.png">

3. So you can set font in this way throught the app for UILabel, UITextView, UITextField.
![simulator screen shot apr 27 2017 5 47 42 pm](https://cloud.githubusercontent.com/assets/13132856/25483946/93871622-2b75-11e7-9bd0-c999b7b86d46.png)
4. One benefit of this will be when you have to change the Font thoughout the app, just change in AppDelegate. Font changed throughout the App with no manually setting. 
5. Just hard part to remember which value is set for what.
6. Suggestion and improvements are welcomed.
 




## Requirements

## Installation

AJIBDesignables is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

pod 'AJIBDesignables', :git => 'https://github.com/arunlj561/AJIBDesignables'

You can add Corner Radius, Border width, Border sides, Gradient to View, padding to TextField. 

## Author

arunlj561, arunlj561@gmail.com

## License

AJIBDesignables is available under the MIT license. See the LICENSE file for more info.
=======
# AJIBDesignables
