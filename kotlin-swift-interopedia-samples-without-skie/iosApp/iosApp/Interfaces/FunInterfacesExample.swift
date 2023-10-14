import Foundation
import shared

class EmptyClass {

    var someFunc: () -> () = { }

    init(overrides: (EmptyClass) -> EmptyClass) {
        overrides(self)
    }
}

class FunInterfacesExample {
    func example(){
        // Now you initialize 'EmptyClass' with a closure that sets
        // whatever variable properties you want to override:

        let workingClass = EmptyClass { ec in
            ec.someFunc = { print("It worked!") }
            return ec
        }

        workingClass.someFunc()  // Outputs: "It worked!"
    }
}
