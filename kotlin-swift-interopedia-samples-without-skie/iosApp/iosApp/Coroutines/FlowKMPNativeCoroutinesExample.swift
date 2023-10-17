import Foundation
import shared
import KMPNativeCoroutinesAsync
import KMPNativeCoroutinesCore

class FlowKMPNativeCoroutinesExample {
    @MainActor
    func example(){
        Task {
            do {
                let sequence = asyncSequence(for: NumberFlowRepository().getNumbers())
                for try await number in sequence {
                    print("Got number: \(number)")
                }
            } catch {
                print("Failed with error: \(error)")
            }
        }
    }
}
