# AnimationSequencer

Very simple and scalable UIView animation extension without nested completion closures. It uses standard iOS api but wraps around a nicer look.

Usally we make animations using system `animate()` method and completion block, but in my experience it's not scalable, very hard to read and it's hard to remove or add a new animation according to design specifications.



[![CI Status](https://img.shields.io/travis/fabiosoft/AnimationSequencer.svg?style=flat)](https://travis-ci.org/fabiosoft/AnimationSequencer)
[![Version](https://img.shields.io/cocoapods/v/AnimationSequencer.svg?style=flat)](https://cocoapods.org/pods/AnimationSequencer)
[![License](https://img.shields.io/cocoapods/l/AnimationSequencer.svg?style=flat)](https://cocoapods.org/pods/AnimationSequencer)
[![Platform](https://img.shields.io/cocoapods/p/AnimationSequencer.svg?style=flat)](https://cocoapods.org/pods/AnimationSequencer)

## Minimum Requirements

- iOS 8.0+
- Swift 5.1+

## Usage

From this nested, ugly, nested completion.

```swift
UIView.animate(withDuration: 1.0, delay: 2.0, animations: {
    
    square.center.x += 100
    square.center.y += 100
    
}) { (finished) in
    UIView.animate(withDuration: 0.3, animations: {
        
        square.center.x = self.view.center.x
        square.center.y = self.view.center.y
        
    }) { (finished) in
        UIView.animate(withDuration: 0.3, animations: {
            
            square.alpha = 0
            
        }) { (finished) in

        }
    }
}
```

To pure clean, couple lines of code

```swift
square.animate([
    ASAction.move(byX: 100, y: 100, duration: 1.0).delayedFor(2.0),
    ASAction.move(centerToX: self.view.center.x, y: self.view.center.y),
    ASAction.fadeOut()
])
```


## Installation

#### CocoaPods

Install CocoaPods if not already available:

``` bash
$ [sudo] gem install cocoapods
```
Go to the directory of your Xcode project, and Create and Edit your *Podfile* and add the lib:

``` bash
$ cd /path/to/MyProject
$ nano Podfile

pod 'AnimationSequencer'
```

Install into your project:

``` bash
$ pod install
```

Open your project in Xcode from the .xcworkspace file (not the usual project file):

``` bash
$ open MyProject.xcworkspace
```

You can now `import AnimationSequencer` framework into your files.

#### Manually

Download the project and copy the `AnimationSequencer` folder into your project to use it in.

## Contribution

Contributions are welcome *♡*.

## Contact

Fabio Nisci • [fabionisci@gmail.com](mailto:fabionisci@gmail.com)


## License (MIT)

Copyright (c) 2020-present - Fabio Nisci

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
