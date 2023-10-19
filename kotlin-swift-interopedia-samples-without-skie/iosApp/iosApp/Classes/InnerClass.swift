import Foundation
import shared

func createInnerClass() {
    let innerClass = OuterClass.InnerClass(OuterClass(param: "1323"))
    print(innerClass.useSomeFunction())
}

