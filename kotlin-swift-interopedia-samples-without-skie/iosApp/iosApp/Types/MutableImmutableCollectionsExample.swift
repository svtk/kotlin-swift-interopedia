import Foundation
import shared

class MutableImmutableCollectionsExample {
    func collectionsMutabilityExample() {
        var mutableList: [KotlinInt] = [1, 2, 3]
        let notMutableList: [KotlinInt] = [1, 2, 3]

        mutableList = CommonTypesKt.listType(list: mutableList)
        let _ = CommonTypesKt.listType(list: notMutableList)
    }
    
    func listTypeNoCrashes(){
        var list = CommonTypesKt.listType(list: [12, 34])
        list.append(2)
        print(list)
    }
    
    func listMutableListExample(){
        var mutableList: [KotlinInt] = [1, 2, 3]
        let notMutableList: [KotlinInt] = [1, 2, 3]

        let _ = MutableImmutableCollectionsKt.mutableListType(list: NSMutableArray(array: notMutableList))
        let _ = MutableImmutableCollectionsKt.mutableListType(list: NSMutableArray(array: mutableList))
    }
    
    func setMutableSetExample(){
        var mutableSet: Set<KotlinInt> = Set(arrayLiteral: 1, 2, 3)
        let notMutableSet: Set<KotlinInt> = Set(arrayLiteral: 1, 2, 3)

        mutableSet = MutableImmutableCollectionsKt.setType(set: mutableSet)
        let _ = MutableImmutableCollectionsKt.setType(set: notMutableSet)

        let _ = MutableImmutableCollectionsKt.mutableSetType(set: KotlinMutableSet(set: mutableSet))
        let _ = MutableImmutableCollectionsKt.mutableSetType(set: KotlinMutableSet(set: notMutableSet))
    }
    
    func mutableSetExample(){
        var mutableSet: Set<KotlinInt> = Set(arrayLiteral: 1, 2, 3)

        mutableSet = MutableImmutableCollectionsKt.mutableSetType(
            set: KotlinMutableSet(set: mutableSet)
        ) as! Set<KotlinInt>
    }
    
    func mapMutableMapExample(){
        var mutableMap: Dictionary<String, KotlinInt> = Dictionary(dictionaryLiteral: ("1", 1), ("2", 2), ("3", 3))
        var mutableMapLiteral: [String: KotlinInt] = [
            "1": 1,
            "2": 2,
            "3": 3
        ]
        let notMutableMap: Dictionary<String, KotlinInt> = Dictionary(
            dictionaryLiteral: ("1", 1), ("2", 2), ("3", 3)
        )
        let notMutableMapLiteral: [String: KotlinInt] = [
            "1": 1,
            "2": 2,
            "3": 3
        ]
        
        mutableMap = MutableImmutableCollectionsKt.mapType(map: mutableMap)
        mutableMapLiteral = MutableImmutableCollectionsKt.mapType(map: mutableMapLiteral)
        let _ = MutableImmutableCollectionsKt.mapType(map: notMutableMap)
        let _ = MutableImmutableCollectionsKt.mapType(map: notMutableMapLiteral)
        
        let _ = MutableImmutableCollectionsKt.mutableMapType(
            map: KotlinMutableDictionary(dictionary: mutableMap)
        )
        let _ = MutableImmutableCollectionsKt.mutableMapType(
            map: KotlinMutableDictionary(dictionary: mutableMapLiteral)
        )
        let _ = MutableImmutableCollectionsKt.mutableMapType(
            map: KotlinMutableDictionary(dictionary: notMutableMap)
        )
        let _ = MutableImmutableCollectionsKt.mutableMapType(
            map: KotlinMutableDictionary(dictionary: notMutableMapLiteral)
        )
        
        mutableMap = MutableImmutableCollectionsKt.mutableMapType(
            map: KotlinMutableDictionary(dictionary: mutableMap)
        ) as! Dictionary<String, KotlinInt>
    }
}
