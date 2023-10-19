import Foundation
import shared

func memberFunctionExample() {
    let myClass = MyKotlinClass()

//     myClass.kotlinInternalFunction(),
//     myClass.kotlinPrivateFunction(),
    print("Calling \(myClass.kotlinPublicFunction())")
}
