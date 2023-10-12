import Foundation
import shared

class FunctionWithValueClassParameterExample{
    func example(){
        //Type of v is Int32
        let result1 = FunctionWithValueClassParameterKt.valueClassUsageExample(v: 40)
        print(result1)
    }
}
