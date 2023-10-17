import Foundation
import shared

@MainActor
class FlowExample{
    func example(){
        Task {
            for await it in NumberFlowRepository().getNumbers() {
                print("Got number: \(it)")
            }
        }
    }
}
