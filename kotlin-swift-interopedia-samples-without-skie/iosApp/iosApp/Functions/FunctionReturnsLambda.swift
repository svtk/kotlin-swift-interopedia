import Foundation
import shared

class FunctionReturnsLambdaExample {
    func example(){
        FunctionReturnsLambdaKt.returnLambda()()
        FunctionReturnsLambdaKt.returnParametrizedLambda()("123")
    }
}
