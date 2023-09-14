import Foundation
import shared

class FunctionReturnsLambdaExample {
    func example(){
        FunctionReturnsLambdaKt.returnLambda()()
        let _ = FunctionReturnsLambdaKt.returnParametrizedLambda()("123")
    }
}
