# SwiftBooster

Boost your code with **SwiftBooster**. Bring the missing functionality to the iOS framework and Swift language. So far most of Kotlins nice feature are implemented.

## Installation

SwiftBooster is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SwiftBooster'
```

## Cheatsheet

#### Collection
- `isNotEmpty: Bool`
- `mapIndexed(_:) -> [T]`
- `forEachIndexed(_:)`
- `reduceIndexed(_:) -> T`
- `reduceRight(_:) -> T`
- `reduceRightIndexed(_:) -> T`
- `filterNot(_:) -> [T]`
- `getOrNull(_:) -> T?`
- `getOrElse(_:) -> T`

#### Bool
- `not: Bool`

#### Double
- `toString() -> String`
- `toInt() -> Int`

#### Int
- `toString() -> String`
- `toInt64() -> Int64`
- `toDouble() -> Double`
- `separateByCharacter(_:) -> String`

#### String
- `isNotEmpty: Bool`
- `isBlank: Bool`
- `isNotBlank: Bool `
- `toInt() -> Int?`
- `toDouble() -> Double?`
- `toBool() -> Bool?`
- `toJsonObject() -> JSONObject?`
- `toJsonArray() -> JSONArray?`


## Author

Sepehr  Behroozi, 3pehrbehroozi@gmail.com

## License

SwiftBooster is available under the MIT license. See the LICENSE file for more info.
