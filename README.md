# HCExtension

[![CI Status](https://img.shields.io/travis/hucong730/HCExtension.svg?style=flat)](https://travis-ci.org/hucong730/HCExtension)
[![Version](https://img.shields.io/cocoapods/v/HCExtension.svg?style=flat)](https://cocoapods.org/pods/HCExtension)
[![License](https://img.shields.io/cocoapods/l/HCExtension.svg?style=flat)](https://cocoapods.org/pods/HCExtension)
[![Platform](https://img.shields.io/cocoapods/p/HCExtension.svg?style=flat)](https://cocoapods.org/pods/HCExtension)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

HCExtension is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'HCExtension'
```

### Swift Package Manager

To integrate using Apple's Swift package manager, add the following as a dependency to your `Package.swift`:

```swift
.package(url: "https://github.com/hucong730/HCExtension.git", .upToNextMajor(from: "0.4.1"))
```

and then specify `"HCExtension"` as a dependency of the Target in which you wish to use HCExtension.
Here's an example `PackageDescription`:

```swift
// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "MyPackage",
    products: [
        .library(
            name: "MyPackage",
            targets: ["MyPackage"]),
    ],
    dependencies: [
        .package(url: "https://github.com/hucong730/HCExtension.git", .upToNextMajor(from: "0.4.1"))
    ],
    targets: [
        .target(
            name: "MyPackage",
            dependencies: ["HCExtension"])
    ]
)
```


## Author

hucong730, wddyzzw@icloud.com

## License

HCExtension is available under the MIT license. See the LICENSE file for more info.
