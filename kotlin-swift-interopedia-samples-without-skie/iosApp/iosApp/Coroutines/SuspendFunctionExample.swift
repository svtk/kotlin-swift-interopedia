import Foundation
import shared

func suspendFunctionExample() {
    ThingRepository().getThingSimple(succeed: true, completionHandler: { thing, error in
        print("Thing is \(thing). Error is \(error)")
    })
}
