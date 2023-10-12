import Foundation
import shared

class DslExample{
    
    private func dslBlock(block: (Dsl) -> Dsl) -> Dsl {
        var dsl = Dsl()
        dsl = block(dsl)
        return dsl
    }
    
    func example(){
        dslBlock { dsl in
            dsl.experiments { e in e.enable(experiment: Experiment(key: "key1", description: "param123"))}
            return dsl
        }
    }
}
// var l1 = Dsl(e: ExperimentsDsl(l: NSMutableArray()))
//l1.experiments{ a in a.enable(experiment: Experiment(key: "key1", description: "param1"))
//}
//print("DSL is \(l1)")
