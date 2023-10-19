import Foundation
import shared

@MainActor
func flowExample() {
    Task {
        try await NumberFlowRepository().getNumbersSimple().collect(collector: AnyCollector())
    }
}

class AnyCollector: Kotlinx_coroutines_coreFlowCollector {
    func emit(value: Any?) async throws {
        print("Got number: \(value!)")
    }
}
