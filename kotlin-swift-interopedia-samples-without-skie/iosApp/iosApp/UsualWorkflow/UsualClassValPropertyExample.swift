import Foundation
import shared

func memberReadonlyPropertyExample() {
    let myClass = MyClassValProperty(param: "param passed from Swift")
    print(myClass.property)
}
