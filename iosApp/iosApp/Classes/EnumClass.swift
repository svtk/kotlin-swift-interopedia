import Foundation
import shared

class EnumClassExample{
    func useEnumClass() {
        let _ = EnumClass.entryOne
        let _ = EnumClass.entryTwo
        
        let _ = EnumClass.entryOne.name
        let _ = EnumClass.entryOne.type
        
        let _ = EnumClass.companion.findByType(type: "entry_two")
        let optionalResult = EnumClass.companion.findByType(type: "entry_two_trheee")
    }

    private func switchEnumClass(enumClassExample: EnumClass) {
        switch enumClassExample {
        default:
            print("Sad")
        }
    }
}
