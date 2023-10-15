## Collections with custom types data

Collections with elements of custom types do not require additional mappings.

### Explanations

Let the following code be declared on the Kotlin side:

```kotlin
//CollectionsWithCustomTypesData.kt

data class NotPrimitiveType(
    val item: String
)

fun notPrimitiveTypeList(list: List<NotPrimitiveType>): List<NotPrimitiveType> {
    return list
}

fun notPrimitiveTypeSet(set: Set<NotPrimitiveType>): Set<NotPrimitiveType> {
    return set
}

fun notPrimitiveTypeMap(map: Map<String, NotPrimitiveType>): Map<String, NotPrimitiveType> {
    return map
}
```

On the Swift side, collections with custom data types can be used without special mappings:

```swift
let myList: [NotPrimitiveType] = CollectionsWithCustomTypesDataKt.notPrimitiveTypeList(list: inList)
let mySet: Set<NotPrimitiveType> = CollectionsWithCustomTypesDataKt.notPrimitiveTypeSet(set: inSet)
let myMap: [String: NotPrimitiveType] = CollectionsWithCustomTypesDataKt.notPrimitiveTypeMap(map: inMap)  
```

---
[Table of contents](/README.md)