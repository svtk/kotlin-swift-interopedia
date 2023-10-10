import Foundation
import shared

class InnerClassExample{
    
    func createInnerClass(){
        let innerClass = OuterClass.InnerClass(OuterClass(param: "1323"))
        innerClass.useSomeFunction()
    }
}

