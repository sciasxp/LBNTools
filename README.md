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

### stringAsPlainTextFromString 

Remove escape text from string and return as plain text. Those escaped text is mostly received via HTML pages string.

### errorWithMessage

A facilitator method that creates a NSError object with a given message.

### isNetworkAvailable

Make use of reachability class to determine if there is any kind of internet connection.

## Author

Luciano Bastos Nunes, sciasxp@gmail.com

## License

LBNTools is available under the MIT license. See the LICENSE file for more info.
