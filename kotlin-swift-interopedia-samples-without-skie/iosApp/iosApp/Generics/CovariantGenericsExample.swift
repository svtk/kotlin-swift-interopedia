import Foundation
import shared

class CovariantGenericsExample {
    func example(){
        outGenericUsage(generic: OutGeneric(data: "123"))
    }
    
    private func outGenericUsage(generic: OutGeneric<NSString>) {
        let _: OutGeneric<AnyObject> = generic as! OutGeneric<AnyObject>
    }
}
