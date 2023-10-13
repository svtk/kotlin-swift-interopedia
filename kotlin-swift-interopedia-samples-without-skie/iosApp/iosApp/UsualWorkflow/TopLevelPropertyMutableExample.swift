import Foundation
import shared

class TopLevelPropertyMutableExample {
    func example(){
        let _ = TopLevelPropertyMutableKt.topLevelPropertyMutable
        TopLevelPropertyMutableKt.topLevelPropertyMutable = "Changed from Swift"
        print(TopLevelPropertyMutableKt.topLevelPropertyMutable)
    }
}
