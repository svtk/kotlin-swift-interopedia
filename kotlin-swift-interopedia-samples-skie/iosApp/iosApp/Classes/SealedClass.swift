import Foundation
import shared

class SealedClassExample {
    func example(s: SealedClass) {
        switch onEnum(of: s) {
            case .object: print("object")
        case .simple(let simple): print("simple \(simple.param1)")
        case .data(let data): print("data \(data.param1) \(data.param2)")
        }
    }
}
