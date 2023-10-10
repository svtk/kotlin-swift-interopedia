import Foundation
import shared

class EnumClassExample{
    func useEnumClass() {
        let e1 = EnumClass.entryOne
        let _ = EnumClass.entryTwo
        
        let _ = EnumClass.entryOne.name
        let _ = EnumClass.entryOne.type
        
        let _ = EnumClass.companion.findByType(type: "entry_two")
        let optionalResult = EnumClass.companion.findByType(type: "entry_two_trheee")

        switchEnumClass(enumClassExample: e1)
    }

    private func switchEnumClass(enumClassExample: EnumClass) {
        switch enumClassExample {
            case .entryOne: print("entryOne")
            case .entryTwo: print("entryTwo")
            default:
                print("default")
            }
    }
}
