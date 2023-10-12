import Foundation
import shared

class FunctionWithVarargParameterExample {
    func example(){
        let arr = KotlinArray<NSString>(
            size: 10,
            init: { index in "\(index)" as NSString }
        )
        FunctionWithVarargParameterKt.funcWithVararg(item: arr)
    }
}
