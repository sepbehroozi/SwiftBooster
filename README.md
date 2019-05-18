# SwiftBooster

Boost your code with **SwiftBooster**. Bring the missing functionality to the iOS framework and Swift language. So far most of Kotlins nice feature are implemented.

## Installation

SwiftBooster is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SwiftBooster'
```

## Usage

Some example:
```swift
//Extracting value from JSON
let thePrice: Int? = getValue(input: myJsonObject, subscripts: "product", "details", "price")

//convert string to JSON
let jsonResponse = rawResponseString.toJsonObject()

//register multiple cells for tableView
self.tableView.register(
    (HeaderTableViewCell.nib, HeaderTableViewCell.nibName),
    (BodyTableViewCell.nib, BodyTableViewCell.nibName),
    (FooterTableViewCell.nib, FooterTableViewCell.nibName),
    (ErrorTableViewCell.nib, ErrorTableViewCell.nibName)
)
```

See [Wiki](https://github.com/3pehrbehroozi/SwiftBooster/wiki) for full usage description.

## Author

Sepehr  Behroozi, 3pehrbehroozi@gmail.com

## License

SwiftBooster is available under the Apache License v2.0 license. See the LICENSE file for more info.
