# LBNTools

[![CI Status](http://img.shields.io/travis/Luciano Bastos Nunes/LBNTools.svg?style=flat)](https://travis-ci.org/Luciano Bastos Nunes/LBNTools)
[![Version](https://img.shields.io/cocoapods/v/LBNTools.svg?style=flat)](http://cocoapods.org/pods/LBNTools)
[![License](https://img.shields.io/cocoapods/l/LBNTools.svg?style=flat)](http://cocoapods.org/pods/LBNTools)
[![Platform](https://img.shields.io/cocoapods/p/LBNTools.svg?style=flat)](http://cocoapods.org/pods/LBNTools)

## Usage

Include LBNTools.h in your project.

```ObjC
#import "LBNTools.h"
```
Than you can access all the methods as class methods. No need to instantiete this class.

## Requirements

This Tools uses Reachability as a means to check for internet accesss availability.

## Installation

LBNTools is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "LBNTools"
```

## Methods

### +(NSString *)stringAsPlainTextFromString:

Remove escape text from string and return as plain text. Those escaped text is mostly received via HTML pages string.

### +(NSError *)errorWithMessage:

A facilitator method that creates a NSError object with a given message.

### +(bool)isNetworkAvailable

Make use of reachability class to determine if there is any kind of internet connection.

### +(void)roundCorners:borderColor:radius:forView:

Round corners for any view, adding border with especified color. You can define which corner will be rounded using those properties on roundCorners: (UIRectCornerTopLeft | UIRectCornerTopRight | UIRectCornerBottomLeft | UIRectCornerBottomRight)

### +(void)roundTopCornersRadius:borderColor:forView:

Round top corners for any view, adding border with especified color.

### +(void)roundBottomCornersRadius:borderColor:forView:

Round top corners for any view, adding border with especified color.

### + (bool)canUpdateForTime:andStorePlace:

It records in the storePlace the time this funcion was last called and check if the given time has been passed sinse the last time it was called.

Time is give in hours and storePlace is any string that will be used as key to store the value, this away you can have as much time checks as you have storePlaces.

## Author

Luciano Bastos Nunes, sciasxp@gmail.com

## License

LBNTools is available under the MIT license. See the LICENSE file for more info.
