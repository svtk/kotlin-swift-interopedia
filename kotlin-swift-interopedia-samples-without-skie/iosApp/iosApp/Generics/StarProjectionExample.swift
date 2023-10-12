import Foundation
import shared

class StarProjectionExample {
    func example(){
        let starProj = MyGeneric(data: NSNumber(12))
        starProj.someStarProjection(myGeneric: starProj as! MyGeneric<AnyObject>)
        starProj.someStarProjection(
            myGeneric: MyGeneric<AnyObject>(data: NSString("111"))
        )
    }
}
