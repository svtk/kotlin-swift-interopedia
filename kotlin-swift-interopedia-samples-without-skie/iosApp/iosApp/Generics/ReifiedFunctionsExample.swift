import Foundation
import shared

class ReifiedFunctionsExample {
    func example() {
        let c = ReifiedFunctionsKt.reifiedFunction(marks: 23)
        print("c = \(String(describing: c))")
    }
}
