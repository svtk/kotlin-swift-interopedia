import Foundation
import shared

class BoundedGenericsExample {
    func example(){
        class MyStricted : ForStricted {}

        let result1 = StrictedGeneric(data: MyStricted())
        let result2 = StrictedGeneric(data: NSString("1122")) // Compiles   
    }
}
