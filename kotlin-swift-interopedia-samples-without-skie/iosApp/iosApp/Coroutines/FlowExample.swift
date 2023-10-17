//import Foundation
//import shared
//
//@MainActor
//class FlowExample {
//    func example(){
//        Task {
//            try await NumberFlowRepository().getNumbers().collect(collector: AnyCollector())
//        }
//    }
//}
//
//class AnyCollector : Kotlinx_coroutines_coreFlowCollector {
//    func emit(value: Any?) async throws {
//        print("Got number: \(value!)")
//    }
//}
