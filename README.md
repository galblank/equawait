# equawait

[![CI Status](http://img.shields.io/travis/Blank, Gal (Contractor)/equawait.svg?style=flat)](https://travis-ci.org/Blank, Gal (Contractor)/equawait)
[![Version](https://img.shields.io/cocoapods/v/equawait.svg?style=flat)](http://cocoapods.org/pods/equawait)
[![License](https://img.shields.io/cocoapods/l/equawait.svg?style=flat)](http://cocoapods.org/pods/equawait)
[![Platform](https://img.shields.io/cocoapods/p/equawait.svg?style=flat)](http://cocoapods.org/pods/equawait)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.
To create and display a waiting dialog :
func showwaitingwindow(message:String,showinview:UIView?)
    {
        
       waitWindow = EquaWait(frame: CGRectMake((UIApplication.sharedApplication().keyWindow?.center.x)! - 35, (UIApplication.sharedApplication().keyWindow?.center.y)! - 35, 70, 70))
        waitWindow!.animate()
        
        dispatch_async(dispatch_get_main_queue()) {
            
            if(showinview != nil){
                showinview!.addSubview(self.waitWindow!)
            }
            else{
                self.tabbar.view.addSubview(self.waitWindow!)
            }
        }
 
    }

## Requirements

## Installation

equawait is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "equawait"
```

## Author

Blank, Gal galblank@gmail.com

## License

equawait is available under the MIT license. See the LICENSE file for more info.
