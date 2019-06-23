# CancelBag

A DisposeBag for [Combine](https://developer.apple.com/documentation/combine).

## Usage

```swift
let cancelBag = CancelBag()

myPublisher
  .sink { _ in }
  .cancel(with: cancelBag)
```

## Installation

- **Using [Swift Package Manager](https://swift.org/package-manager)**:

    ```swift
    import PackageDescription

    let package = Package(
      name: "MyAwesomeApp",
      dependencies: [
        .Package(url: "https://github.com/devxoul/CancelBag", majorVersion: 1),
      ]
    )
    ```

- **Using [CocoaPods](https://cocoapods.org)**:

    ```ruby
    pod 'CancelBag'
    ```

## License

**CancelBag** is under MIT license. See the [LICENSE](LICENSE) file for more info.
