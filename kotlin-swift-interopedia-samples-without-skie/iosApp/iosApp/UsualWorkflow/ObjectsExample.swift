import Foundation
import shared

class ObjectsExample {
    func example(){
        ObjectExample.shared.CONST_VAL_EXAMPLE
        ObjectExample.shared.someVal
        ObjectExample.shared.functionExample()
        ObjectExample.shared.paramFunctionExample(funcParam1: "123")
    }
}
