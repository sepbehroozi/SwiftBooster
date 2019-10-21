# SwiftBooster

Boost your code with **SwiftBooster**. Bring the missing functionality to the iOS framework and Swift language. So far most of Kotlins nice feature are implemented.

## Installation

SwiftBooster is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'SwiftBooster'
```

## Cheatsheet

1. [Collection](#id-collection)
2. [Example2](#id-author)
3. [Third Example](#third-example)


<div id='id-collection'/>
### Collection

| Method / Variable | Input list | Type / Return type | Description |
|:------------------------------:|:----------------------------------------------------------------------------:|:------------------:|:-------------------------------------------------------------------------------------------------------------------------------------------:|
|  `isNotEmpty` | - | `Bool` |  Indicates whether this collection has at least 1 item |
| `mapIndexed( _: )` | `transform: (Element, Int) -> T` |  `[T]` | Same as `map( _: )` with `index` parameter |
| `forEachIndexed( _: )` | `body: (Element, Int) -> Void` | - | Same as `forEach( _: )` with `index` parameter |
| `reduceIndexed( _:, _: )` | `initialResult: Result, nextPartialResult: (Result, Element, Int) -> Result` | `T` | Same as `reduce` with `index` parameter |
| `reduceRight( _:, _: )` | `initialResult: Result, nextPartialResult: (Result, Element) -> Result` | `T` | Same as `reduce` but in reverse order |
| `reduceRightIndexed( _:, _: )` | `initialResult: Result, nextPartialResult: (Result, Element, Int) -> Result` | `T` | Same as `reduceRight` with index parameter |
|  `getOrNull( _: )` | `index: Index` | `Element?` | Returns an element at the given `index` or `nil` if the `index` is out of bounds of this array. |
| `getOrElse( _:, _: )` | `index: Index, defaultValue: (Index) -> Element` |  `Element` | Returns an element at the given `index` or the result of calling the `defaultValue` function if the `index` is out of bounds of this array. |
| `filterNot( _: )` | `predicate: (Element) -> Bool` | `[Element]` | Returns a list containing all elements NOT matching the given `predicate` |


<div id='id-bool'/>
### Bool
| Method / Variable | Input list | Type / Return type | Description |
|:-----------------:|:----------:|:------------------:|:------------------------------------:|
| `not` | - | `Bool` | Returns the inverse of this boolean. |

<div id='id-double'/>
### Double
| Method / Variable | Input list | Type / Return type | Description |
|:-----------------:|:----------:|:------------------:|:--------------------------------------------:|
| toString() | - | `String` | Returns a `String` representing this value |
| toInt() | - | `Int` | Returns the `Int` representing this `Double` |

<div id='id-int'/>
### Int
| Method / Variable | Input list | Type / Return type | Description |
|:---------------------------:|:------------:|:------------------:|:----------------------------------------------------------------------:|
| `toString()` | - | `String` | Returns a `String` representing this value |
| `toInt64()` | - | `Int64` | Returns the `Int64` representing this `Int` |
| `toDouble()` | - | `Double` | Returns the `Double` representing this `Int` |
| `separateByCharacter( _: )` | `ch: String` | `String` | Returns a `String` representing this value separated by `ch` character |


<div id='id-string'/>
### String
| Method / Variable | Input list | Type / Return type | Description |
|:---------------------------:|:------------:|:------------------:|:----------------------------------------------------------------------:|
| `isNotEmpty` | - | `Bool` | A Boolean value indicating whether a string has at least one characters |
| `isBlank` | - | `Bool` | Returns `true` if this string is empty or consists solely of whitespace characters |
| `isNotBlank` | - | `Bool` | Returns `true` if this char sequence is not empty and contains some characters except of whitespace characters |
| `toInt()` | - | `Int?` | Parses the string as an `Int` number and returns the result, or nil if the string could not be parsed as `Int` |
| `toDouble()` | - | `Double?` | Parses the string as an `Double` number and returns the result, or nil if the string could not be parsed as `Double` |
| `toBool()` | - | `Bool?` | Parses the string as an `Bool` value and returns the result, or nil if the string was neither true nor false |
| `toJsonObject()` | - | `JSONObject?` | Tries to make a `JSONObject` (aka `String: Any`) from this string and returns the value |
| `toJsonArray()` | - | `JSONArray?` | Tries to make a `JSONArray` (aka `Array<JSONObject>`) from this string and returns the value |

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
