import Foundation
import shared

class FunctionWithDefaultArgumentsExample {
    func example() {
        // Doesn't compile:
//        FunctionWithDefaultArgumentsClass().defaultParamsFunction(funcParam1: "String")
        FunctionWithDefaultArgumentsClass().defaultParamsFunction(funcParam1: "1", funcParam2: 100)
    }
}
