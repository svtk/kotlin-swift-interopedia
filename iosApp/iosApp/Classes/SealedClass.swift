import Foundation
import shared

class SealedClassExample {
    func example(s: SealedClass) {
        switch s {
        case is SealedClass.Object: print("object")
        case is SealedClass.Simple: print("simple")
        case is SealedClass.Data: print("data")
        default: print("Sad")
        }
    }
    
    enum SealedSwift {
        
        case object
        case simple(String)
        case data(String, Bool)
        
        public init(_ obj: SealedClass) {
            if obj is SealedClass.Object {
                self = .object
            } else if let obj = obj as? SealedClass.Simple {
                self = .simple(obj.param1)
            } else if let obj = obj as? SealedClass.Data {
                self = .data(obj.param1, obj.param2)
            } else {
                fatalError("SealedSwift not syncronized with SealedClass class")
            }
        }
        
    }
    
    // Usage
    func switchUsage(sealedClass: SealedClass) {
        switch SealedSwift(sealedClass){
        case .object:
            print("object")
        case let .simple(param1):
            print("simple")
        case let .data(param1, param2):
            print("data")
        }
    }
}
