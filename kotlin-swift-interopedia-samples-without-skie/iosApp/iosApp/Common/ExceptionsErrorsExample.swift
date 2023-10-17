import Foundation
import shared

class ExceptionsErrorsExample {
    func checkedExample(){
        do {
            try ExceptionsErrorsKt.functionThrowsDeclaredException()
        }
        catch {
            print (error)
        }
    }
    
    func uncheckedExample(){
         ExceptionsErrorsKt.functionThrowsUndeclaredException()
    }
}
