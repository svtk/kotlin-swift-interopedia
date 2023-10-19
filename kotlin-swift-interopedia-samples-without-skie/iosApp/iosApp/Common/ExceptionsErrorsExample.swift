import Foundation
import shared

func checkedExeptionExample()  {
    do {
        try ExceptionsErrorsKt.functionThrowsDeclaredException()
        print("Shouldn't be reachable")
    } catch {
        print("Error is handled: \(error)")
    }
}

func uncheckedExceptionExample() {
    ExceptionsErrorsKt.functionThrowsUndeclaredException()
}
