import Foundation
import shared

class UsualClassPropertyMutableExample {
    func example() {
        let myClass = UsualClassPropertyMutable(param: "123")
        
        myClass.param = "467"
        myClass.property = "775"
    }
}
