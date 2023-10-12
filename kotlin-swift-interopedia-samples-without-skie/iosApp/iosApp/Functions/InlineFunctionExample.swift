import Foundation
import shared

class InlineFunctionExample {
    func example(){
        InlineFunctionKt.inlineFunction {
            print("I'm inside inline!!!")
        }
    }
}
