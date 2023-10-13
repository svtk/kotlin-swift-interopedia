import Foundation
import shared

class UsualClassValPropertyExample {
    func example() {
        let myClass = UsualClassValProperty(param: "123")
        
        let _ = myClass.param
        let _ = myClass.property
    }
}
