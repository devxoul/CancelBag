import Combine
import class Foundation.NSLock

@available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
public final class CancelBag: Cancellable {

  private let lock: NSLock = NSLock()
  private var cancellables: [Cancellable] = []

  public init() {
  }

  internal func add(_ cancellable: Cancellable) {
    self.lock.lock()
    defer { self.lock.unlock() }
    self.cancellables.append(cancellable)
  }

  public func cancel() {
    self.lock.lock()
    let cancellables = self.cancellables
    self.cancellables.removeAll()
    self.lock.unlock()

    for cancellable in cancellables {
      cancellable.cancel()
    }
  }

  deinit {
    self.cancel()
  }
}

@available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
public extension Cancellable {
  func cancel(with cancellable: CancelBag) {
    cancellable.add(self)
  }
}
