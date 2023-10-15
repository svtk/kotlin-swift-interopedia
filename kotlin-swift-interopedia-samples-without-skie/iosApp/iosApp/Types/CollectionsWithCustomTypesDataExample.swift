import Foundation
import shared

class CollectionsWithCustomTypesDataExample {
    func example(){
        let notPrimitive = NotPrimitiveType(item: "abc123")
        let inList = [notPrimitive]
        let inSet: Set<NotPrimitiveType> = [notPrimitive]
        let inMap: [String: NotPrimitiveType] = ["key": notPrimitive]
        
        let myList: [NotPrimitiveType] = CollectionsWithCustomTypesDataKt.notPrimitiveTypeList(list: inList)
        let mySet: Set<NotPrimitiveType> = CollectionsWithCustomTypesDataKt.notPrimitiveTypeSet(set: inSet)
        let myMap: [String: NotPrimitiveType] = CollectionsWithCustomTypesDataKt.notPrimitiveTypeMap(map: inMap)
    }
}
