import Foundation
import shared

class SuspendFunctionExample{
    @MainActor
    func example(){
        Task {
            let result = try await ThingRepository().getThing(succeed: true)
            print("Got result: \(result)")
        }
    }
}
