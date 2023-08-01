import Foundation
import shared

class InnerClassExample{
    
    func createInnerClass(){
        let _ = OuterClass.InnerClass(OuterClass(param: "1323"))
    }
}

