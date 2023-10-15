## Mutable, immutable collections

To adjust mutability, the `let` and `var` keywords are used. Additional mappings are required for mutable collections.

### Explanations

Regardless of what signature is declared on the Kotlin side, mutable (`MutableList`) or not (`List`), both mutable and immutable collections can be passed on the Swift side.

There was this code on the Kotlin side:

```kotlin
//MutableImmutableCollections.kt

fun mutableListType(list: MutableList<Int>): MutableList<Int> {
    return mutableListOf(4, 5, 6).also { it.addAll(list) }
}
```

In Swift, mutability adjustment is done using the keywords `var` and `let`:

```swift
func collectionsMutabilityExample() {
    var mutableList: [KotlinInt] = [1, 2, 3]
    let notMutableList: [KotlinInt] = [1, 2, 3]

    mutableList = CommonTypesKt.listType(list: mutableList)
    let _ = CommonTypesKt.listType(list: notMutableList)
}
```

By the way, if you write the result of a function that returns `List` in a `var` variable, then you can safely change this collection, there will be no crashes:

```swift
func listTypeNoCrashes(){
    var list = CommonTypesKt.listType(list: [12, 34])
    list.append(2)
}
```

#### List / MutableList

With mutable collections there are different rules and different types. `MutableList` turns into `NSMutableArray`, but you can use a simple method of turning `[KotlinInt]` into `NSMutableArray`.

```swift
func listMutableListExample(){
    var mutableList: [KotlinInt] = [1, 2, 3]
    let notMutableList: [KotlinInt] = [1, 2, 3]

    let _ = MutableImmutableCollectionsKt.mutableListType(list: NSMutableArray(array: notMutableList))
    let _ = MutableImmutableCollectionsKt.mutableListType(list: NSMutableArray(array: mutableList))
}
```

#### Set / MutableSet

Let us declare two functions on the Kotlin side that use `Set` and `MutableSet`:

```kotlin
//MutableImmutableCollections.kt

fun setType(set: Set<Int>): Set<Int> {  
    return mutableSetOf(1, 2, 3).also { it.addAll(set) }  
}  
  
fun mutableSetType(set: MutableSet<Int>): MutableSet<Int> {  
    return mutableSetOf(4, 5, 6).also { it.addAll(set) }  
}
```


With the immutable version there is nothing remarkable, with mutable - on the Swift side [you will need to cast types](https://kotlinlang.org/docs/native-objc-interop.html#collections)  to `KotlinMutableSet`:

```swift
 func setMutableSetExample(){
    var mutableSet: Set<KotlinInt> = Set(arrayLiteral: 1, 2, 3)
    let notMutableSet: Set<KotlinInt> = Set(arrayLiteral: 1, 2, 3)

    mutableSet = MutableImmutableCollectionsKt.setType(set: mutableSet)
    let _ = MutableImmutableCollectionsKt.setType(set: notMutableSet)

    let _ = MutableImmutableCollectionsKt.mutableSetType(set: KotlinMutableSet(set: mutableSet))
    let _ = MutableImmutableCollectionsKt.mutableSetType(set: KotlinMutableSet(set: notMutableSet))
}
```

If you need to cast `KotlinMutableSet` to Swift `Set`, you need to do an explicit cast:

```swift
func mutableSetExample(){
    var mutableSet: Set<KotlinInt> = Set(arrayLiteral: 1, 2, 3)

    mutableSet = MutableImmutableCollectionsKt.mutableSetType(
        set: KotlinMutableSet(set: mutableSet)
    ) as! Set<KotlinInt>
}
```

This is possible because `KotlinMutableSet` == `NSMutableSet`.

#### Map / MutableMap
Let us declare two functions on the Kotlin side that use `Map` and `MutableMap`:

```kotlin
//MutableImmutableCollections.kt

fun mapType(map: Map<String, Int>): Map<String, Int> {  
    return mutableMapOf(  
        "1" to 1,  
		"2" to 2,  
		"3" to 3  
	).also { it.putAll(map) }  
}  
  
fun mutableMapType(map: MutableMap<String, Int>): MutableMap<String, Int> {  
    return mutableMapOf(  
        "1" to 1,  
		"2" to 2,  
		"3" to 3  
	).also { it.putAll(map) }  
}
```

With the immutable version there is nothing remarkable, with mutable - on the Swift side [you will need to cast types](https://kotlinlang.org/docs/native-objc-interop.html#collections) to KotlinMutableDictionary:

```swift
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
}
```

If you need to cast `KotlinMutableDictionary` to Swift `Dictionary`, you need to do an explicit cast:

```swift
mutableMap = types.mutableMapType(
	map: KotlinMutableDictionary(dictionary: mutableMap)
) as! Dictionary<String, KotlinInt>
```

This is possible because `KotlinMutableDictionary` == `NSMutableDictionary`.

---
[Table of contents](/README.md)