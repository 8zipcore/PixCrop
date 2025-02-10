![](https://velog.velcdn.com/images/findjayu/post/c056b2d3-7555-4511-b1f6-672a18249c53/image.png)

<p align="center">
  <img src="https://img.shields.io/cocoapods/v/PixCrop.svg?style=flat" alt="Version" />
  <img src="https://img.shields.io/cocoapods/l/PixCrop.svg?style=flat" alt="License" />
  <img src="https://img.shields.io/cocoapods/p/PixCrop.svg?style=flat" alt="Platform" />
</p>

## PixCrop
PixCrop is an image editing library for easily cropping and rotating images.
<br>

![](https://velog.velcdn.com/images/findjayu/post/129aa0ed-c612-4136-bbf1-518d3fb8025c/image.png)


## Installation
PixCrop is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'PixCrop'
```

## Usage
### Image Cropping
Create a PixCropView with an image and frame that allows cropping.
```swift
import UIKit
import PixCrop

class ViewController: UIViewController {
    
    var pixCropView = PixCropView()

    override func viewDidLoad() {
        super.viewDidLoad()

        pixCropView = PixCropView(frame: self.view.frame, image: UIImage(named: "your_image")!)
        self.view.addSubview(pixCropView)
    }
}
```
If the image crop is completed, you can create a PixCropResultView to display the cropped image. 

```swift
  var pixCropResultView = pixCropView.pixCropEnded(frame: self.view.frame)
  pixCropResultView.frame = self.view.frame
  self.view.addSubview(pixCropResultView)
```
### Rotation
If you want to rotate, rotate your image to the left (-90 degrees) or right (90 degrees) direction.
```swift
  pixCropView.rotateLeft()
  pixCropView.rotateRight()
```
### Flip
If you want to flip, flip the image vertically or horizontally.
```swift
  pixCropView.flipVertically()
  pixCropView.flipHorizontally()
```

### Ratio
If you want to set a ratio, adjust the aspect ratio while cropping the image as preferred.
```swift
  pixCropView.ratio(ratio: CGSize(width: 9, height: 16))
```

## Author

sainkr, howtofindjayu@gmail.com

## License

PixCrop is available under the MIT license. See the LICENSE file for more info.
