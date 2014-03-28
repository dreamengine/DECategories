# DECategories

[https://github.com/dreamengine/DECategories](https://github.com/dreamengine/DECategories)

## What It Does

`DECategories` is a collection of useful categories for the modern iOS developer. These categories make the creation process easier and faster by providing a multitude of conveniences. They are also divided into cocoapods subspecs for individual use.


## How It Works

Below is a list of included categories and what they provide. UIView, UINib, and UIViewController instantiation have particularly useful conveniences.

### NSData+DEImageMimeType

#### *Subspec:* `DECategories/NSData+DEImageMimeType`

*Problem:* You have an image but aren't sure if it's a png or gif.

*Solution:* Just use `-imageDataMimeType` on the image's `NSData` representation and get a mime type string (e.g. @"image/png").
	
### NSMutableArray+DEWeakReferences

#### *Subspec:* `DECategories/NSMutableArray+DEWeakReferences`

*Problem:* You want to store an array of objects but don't want to retain them (e.g. a list of prioritized delegates).

*Solution:* Use `+mutableArrayUsingWeakReferences` and stash away!


### NSMutableDictionary+DENonNil

#### *Subspec:* `DECategories/NSMutableDictionary+DENonNil`

*Problem:* You are populating a dictionary, but some of the objects are optional and you're tired of safety checking to make sure that each one is non-nil before adding them.

*Solution:* Use `-setObjectIfNonNil:forKey:`, and your object will only be added if it is non-nil.


### NSMutableSet+DEWeakReferences

#### *Subspec:* `DECategories/NSMutableSet+DEWeakReferences`

*Problem:* You want to store a set of objects but don't want to retain them (e.g. an unordered list of delegates).

*Solution:* Use `+mutableSetUsingWeakReferences` and stash away!

### NSNotification+DEConveniences

#### *Subspec:* `DECategories/NSNotification+DEConveniences`

*Problem:* Your app only ever uses the default notification center `[NSNotificationCenter defaultCenter]` and you are so very tired of always having to reference it. You also tire of having to manually package `NSNotification` objects whenever you want to send data.

*Solution:* Just use `+postNotificationWithName:`, `+postNotificationWithName:object:`, and `+postNotificationWithName:object:userInfo:`, which will automatically package an `NSNotification` for you and send it out to the default notification center.

### NSString+DERelativePaths

#### *Subspec:* `DECategories/NSString+DERelativePaths`

*Problem:* You have an absolute file path, but you only want the file's path relative to some directory. (E.g. your app utilizes user-provided files and folders and you want to store certain paths, but an app update may change where those files are stored and break the absolute paths you saved.)

*Solution:* Use `-stringWithPathRelativeTo:` and get the relative path.

### UIButton+DEBackgroundColor

#### *Subspec:* `DECategories/UIButton+DEBackgroundColor`

*Problem:* You want the background color of your `UIButton` to change as the control state changes.

*Solution:* Use `-setBackgroundColor:forState:`.

### UIColor+DEConveniences

#### *Subspec:* `DECategories/UIColor+DEConveniences`

*Problem:* You want to create a `UIColor` from a hex string, or you want to make a UIColor without all the verbosity.

*Solution:* For creating a hex string, use `colorWithHexString:`, or you can use the convenience function `UIColorFromHexString(NSString)`.

All convenience functions:

* `UIColorFromValues(float, float, float)`,
* `UIColorFromValuesWithAlpha(float, float, float, float)`,
* `UIColorFromIntValues(int, int, int)` (0-255),
* `UIColorFromIntValuesWithAlpha(int, int, int, int)` (0-255), and
* `UIColorFromHexString(NSString)`.

### UIGestureRecognizer+DECancel

#### *Subspec:* `DECategories/UIGestureRecognizer+DECancel`

*Problem:* You want to be able to manually cancel a `UIGestureRecognizer`.

*Solution:* Use `-cancel`.

### UIImage+DEColorRect

#### *Subspec:* `DECategories/UIImage+DEColorRect`

*Problem:* You want to create a `UIImage` that's filled with a certain color.

*Solution:* Use `+imageWithColor:ofSize:`.

### UIImage+DEResize

#### *Subspec:* `DECategories/UIImage+DEResize`

*Problem:* You want to resize a UIImage, perhaps to save on memory if the image is too large.

*Solution:* Use `+imageWithImage:scaledToSize:`, or `-resizedImageScaledToSize:`.

### UIImage+DETintColor

#### *Subspec:* `DECategories/UIImage+DETintColor`

*Problem:* You want to add a tint to a `UIImage`.

*Solution:* Use `-imageTintedWithColor:fraction:`.

### UINib+DEConveniences

#### *Subspec:* `DECategories/UINib+DEConveniences`

*Problem:* You want to inflate an object from a nib file without all the hassle.

*Solution:* Use `+firstObjectWithNibName:`, which will automatically create a UINib object and send the first item in that nib back to you.

### UITableView+DEHideEmptyCells

#### *Subspec:* `DECategories/UITableView+DEHideEmptyCells`

*Problem:* You have a table view with short cell contents, and you don't much care for the empty cells and lines that are drawn underneath your cells.

*Solution:* Use `-applyHideEmptyCellsStyle`.

### UIView+DEConveniences

#### *Subspec:* `DECategories/UIView+DEConveniences`

*Problem:* You want to directly get and set `x`, `y`, `width`, and `height` values without going through the `frame`. Or, you want to inflate a `UIView` from a nib file and wish it was just a little easier.

*Solution:* `x`, `y`, `width`, and `height` properties are provided. To quickly instantiate from a nib file, use `+viewFromNib` (just make sure that your nib file matches the class name).

### UIView+DEFirstResponder

#### *Subspec:* `DECategories/UIView+DEFirstResponder`

*Problem:* You don't know who the first responder is, but you sure would like to find out.

*Solution:* Use `-findFirstResponder`. (If you want to resign the first responder and don't care who it is, you can just use the built-in `-endEditing:` on your main `UIView` container).


### UIViewController+DEConveniences

#### *Subspec:* `DECategories/UIViewController+DEConveniences`

*Problem:* You wish there was a factory method for easily constructing `UIViewController` instances.

*Solution:* There is! You can simply use `+controller`, and it will automatically attempt to load a nib file with your class's string representation. If a nib file is not found, it will programmatically instantiate your controller.