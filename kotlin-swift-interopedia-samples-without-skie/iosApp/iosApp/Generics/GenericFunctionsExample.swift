import Foundation
import shared

class GenericFunctionsExample {
    func example(){
        let result1: Int = GenericFunctionsKt.convert(data: 12) as! Int
        let result2: String = GenericFunctionsKt.convert(data: "'222'") as! String
        
        print("results \(result1) \(result2)")
    }
}
