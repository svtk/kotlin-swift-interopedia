import Foundation
import shared
import KMPNativeCoroutinesAsync
import KMPNativeCoroutinesCore

class SuspendFunctionKMPNativeCoroutinesExample {
    @MainActor
    func example(){
        Task {
            do {
                let result = try await asyncFunction(for: ThingRepository().getThing(succeed: true))
                print("Got result: \(result)")
            } catch {
                print("Failed with error: \(error)")
            }
        }
    }
}
