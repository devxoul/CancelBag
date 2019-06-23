import Combine
import XCTest
@testable import CancelBag

@available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
final class CancelBagTests: XCTestCase {
  func testCancelBag() {
    var cancellationCount = 0
    _ = {
      let cancelBag = CancelBag()

      for _ in 0..<10 {
        Publishers.Future<Never, Never> { _ in }
          .handleEvents(receiveCancel: { cancellationCount += 1 })
          .sink { _ in }
          .cancel(with: cancelBag)
      }
    }()
    XCTAssertEqual(cancellationCount, 10)
  }
}
