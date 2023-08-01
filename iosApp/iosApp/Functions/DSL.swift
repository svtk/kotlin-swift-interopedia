import Foundation
import shared

class DslExample{
    private func dslBlock(block: (Dsl) -> Dsl) -> Dsl {
        var dsl = Dsl()
        dsl = block(dsl)
        return dsl
    }
    
    func example(){
        Dsl().experiments { experimentsDsl in
            experimentsDsl.enable(experiment: Experiment(key: "key1", description: "desc1"))
        }
    }
}
