import Foundation
import shared

class FunctionWithLambdaArgsExample {
    func example {
        // Lambda with result usage
//         let result1 = FunctionsKt.funcWithLambda(calculation: {
//             print("FunctionsKt.funcWithLambda | inside lambda --> ")
//             return 2
//         })
//         let result2 = FunctionsKt.funcWithLambda {
//             return 30
//         }
//         print("result1: \(result1) , result2: \(result2)")


        // Parametrized lambda example
//         let result3 = FunctionsKt.funcWithParametrizedLambda(parametrizedLambda: { arg in
//             return "funcWithParametrizedLambda | arg: \(arg)"
//         })
//         let result4 = FunctionsKt.funcWithParametrizedLambda { arg in
//             return "funcWithParametrizedLambda | arg: \(arg)"
//         }
//         let result5 = FunctionsKt.funcWithParametrizedLambda {_ in
//             return "funcWithParametrizedLambda | skip argument using"
//         }
//         print("result3: \(result3) , result4: \(result4), result5: \(result5)")

        // Unit lambda in args
//         FunctionsKt.funcWithUnitLabmda {
//             // do some stuff
//         }

        // Several lambdas in args
//         let _ = FunctionsKt.funcWithSeveralLambdas(
//             calculation: {
//                 return 2
//             }, formatting: { arg in
//                 return "Some \(arg)"
//             }
//         )
    }
}
