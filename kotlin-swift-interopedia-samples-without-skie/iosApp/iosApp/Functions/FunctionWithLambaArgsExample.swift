import Foundation
import shared

class FunctionWithLambaArgsExample {
    func example(){
        // Lambda with result usage
        let result1 = FunctionWithLambdaArgsKt.funcWithLambda(calculation: {
            print("FunctionWithLambdaArgsKt.funcWithLambda | inside lambda --> ")
            return 2
        })
        let result2 = FunctionWithLambdaArgsKt.funcWithLambda {
            return 30
        }
        print("result1: \(result1) , result2: \(result2)")


        // Parametrized lambda example
        let result3 = FunctionWithLambdaArgsKt.funcWithParametrizedLambda(parametrizedLambda: { arg in
            return "funcWithParametrizedLambda | arg: \(arg)"
        })
        let result4 = FunctionWithLambdaArgsKt.funcWithParametrizedLambda { arg in
            return "funcWithParametrizedLambda | arg: \(arg)"
        }
        let result5 = FunctionWithLambdaArgsKt.funcWithParametrizedLambda {_ in
            return "funcWithParametrizedLambda | skip argument using"
        }
        print("result3: \(result3) , result4: \(result4), result5: \(result5)")

        // Unit lambda in args
        FunctionWithLambdaArgsKt.funcWithUnitLambda {
            print("funcWithUnitLambda called")
        }

        // Several lambdas in args
        let result6 = FunctionWithLambdaArgsKt.funcWithSeveralLambdas(
            calculation: {
                return 2
            }, formatting: { arg in
                return "Some \(arg)"
            }
        )
        print("funcWithSeveralLambdas \(result6)")
    }
}
