import Foundation
import shared

func mutableMemberPropertyExample() {
    let myClass = MyClassPropertyMutable(param: "123")
    print(myClass.property)
    myClass.property = "updated value from Swift: 456"
    print(myClass.property)
}
