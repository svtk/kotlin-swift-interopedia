import Foundation
import shared

class OpenClassExample : OpenClassWithConstructorParams {
    override func finalFunctionInClass() {
        print("Final function was overridden")
    }
    
    override func functionCanBeOverridden() {
        print("Open function was overridden")
    }
    
    static func example() {
        let example = OpenClassExample(param1: "123", param2: true)
        let _ = example.someField
        example.finalFunctionInClass()
        example.functionCanBeOverridden()
    }
}
