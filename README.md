# PlaybackSlider

[![Version](https://img.shields.io/cocoapods/v/PlaybackSlider.svg?style=flat)](http://cocoapods.org/pods/PlaybackSlider)
[![License](https://img.shields.io/cocoapods/l/PlaybackSlider.svg?style=flat)](http://cocoapods.org/pods/PlaybackSlider)
[![Platform](https://img.shields.io/cocoapods/p/PlaybackSlider.svg?style=flat)](http://cocoapods.org/pods/PlaybackSlider)

## Usage

```
var segments = [CachedSegment]()
segments.append(CachedSegment(start: 0, end: 25))
segments.append(CachedSegment(start: 50, end: 75))
slider.cachedSegments = segments
```

Cached segments will be highlighted on slider bar.

## Requirements

* macOS 10.10+

## Installation

PlaybackSlider is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "PlaybackSlider"
```

## Author

Sota Yokoe, info@kreuz45.com

## License

PlaybackSlider is available under the MIT license. See the LICENSE file for more info.
