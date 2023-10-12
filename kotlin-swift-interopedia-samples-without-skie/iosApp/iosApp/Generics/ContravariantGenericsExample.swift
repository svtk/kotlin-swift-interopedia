import Foundation
import shared

open class SuperClass {}
class ChildClass : SuperClass {}

class ContravariantGenericsExample {
    func example(){
        inGenericUsage(
            generic: InGenericItem<ChildClass>() as! InGenericItem<SuperClass>
        )
    }
    
    private func inGenericUsage(generic: InGenericItem<SuperClass>) {
        let _: InGenericItem<ChildClass> = generic as! InGenericItem<ChildClass>
        print("inGenericUsage - ok")
    }
}
