# UIKitExtensions

`UIKitExtensions` is a collection of extensions for `UIKit` framework. It is a relative to another similar repository: [FoundationExtensions](https://github.com/stanislaw/FoundationExtensions). You may address the following features overview to both these projects as they share the same design principles.

## Quick overview

Here is a quick overview of features that set `UIKitExtensions` apart from many other similar collections on Github:

* `UIKitExtensions` borrows some well known project structure conventions from the Ruby world: it is designed completely in a modular fashion, pretty much like Ruby on Rails core framework [Active Support](https://github.com/rails/rails/tree/master/activesupport) or [Ruby facets](https://github.com/rubyworks/facets). Here are the typical import headers from the project that uses to work with `UIKitExtensions`:

```objective-c
#import <UIKitExtensions/UIScreen.h>
#import <UIKitExtensions/UIHelpers.h>
#import <UIKitExtensions/UIView/Blocks.h>
#import <UIKitExtensions/UIView/Sizing.h>
#import <UIKitExtensions/UILabel/Sizing.h>
```

This design implies the three possible ways of including `UIKitExtensions` to your project:

1) It is possible to require only `Sizing` extension for `UIView` class:

```objective-c
#import <UIKitExtensions/UIView/Sizing.h>
```

2) It is possible to require the whole pack of extensions for `UIView` class:

```objective-c
#import <UIKitExtensions/UIView.h>
```

3) And finally it is possible to include the whole `UIKitExtensions` like we do with Foundation and UIKit:

```objective-c
#import <UIKitExtensions/UIKitExtensions.h>
```

* The magical power of CocoaPods [header_mappings_dir](http://docs.cocoapods.org/specification.html#header_mappings_dir) directive preserving original directory structure for header files inspires `UIKitExtensions` to break one (and only one, don't worry) Objective-C convention: it replaces the usage of `+` sign for categories with `Class/Extension` pair adhering to a corresponding folder structure. So instead of importing a category that could look like 

```objective-c
#import <UIKitExtensions/UIView+Sizing>
```

you import the "extension" pack

```objective-c
#import <UIKitExtensions/UIView/Sizing.h>
```

Just browse through the `UIKitExtensions/` folder contents - it is pretty clear, and it is cool.

## Status 2013.06.05

The project is in a setup phase. If you liked the idea, feel free to suggest your extensions that you use in your daily programming routine - I will be happy to merge any code that address the scope of this general purpose extensions framework.

More documentation is coming.

## Installation

The recommended way is to install via Cocoapods:

Add into your Podfile:

```ruby
pod 'UIKitExtensions', :git => 'https://github.com/stanislaw/FoundationExtensions'
```

And run 

```
pod update
```

or you can just clone `UIKitExtensions` and add `UIKitExtensions/` folder to your project (though author have not performed any tests for if the paths like `UIKitExtensions/UIView/Sizing.h` would be resolved correctly without the magic power of Cocoapods).
