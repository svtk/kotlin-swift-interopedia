import Foundation
import shared

class CollectionsWithPrimitiveTypesExample {
    func example(){
        collectionsExample(intList: [9, 8, 7])
    }
    
    func collectionsExample(intList: [Int]) {
        CollectionWithPrimitiveTypesKt.intList(list: [1, 2, 3]) // ok
        let result2: [KotlinInt] = [1, 2, 3] + CommonTypesKt.listType(list: [1, 3, 4]) // ok
        
        // Mapping
        let li2: [KotlinInt] = CommonTypesKt.listType(
            list: intList.map({ p in KotlinInt(value: Int32(p)) })
        )
    }
}
