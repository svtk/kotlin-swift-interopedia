import Foundation
import shared

class FunctionsWithOverloadsExample2 {
    func example(){
        FunctionsWithOverloads2Kt.anotherOverload(intParam: 1)
        FunctionsWithOverloads2Kt.anotherOverload(longParam: 1)
        FunctionsWithOverloads2Kt.anotherOverload(floatParam: 1.0)
    }
}
