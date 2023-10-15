## Enum class

Doesn't work as expected. But an object with static elements was generated. Improved interop available with SKIE.

### Explanations

Let's describe a regular enum class in Kotlin:

```kotlin
enum class EnumClass(val type: String) {

    ENTRY_ONE("entry_one"),
    ENTRY_TWO("entry_two");

    companion object {
        fun findByType(type: String) = values().find { it.type == type }
    }

}
```

No enum was generated on the Swift side, and as a result, the class cannot be conveniently used in a switch expression and therefore it is necessary to specify a default case.

But there is access to the elements of the enum, there is access to the function inside the companion object, it is possible to call the values() function.

```swift
func useEnumClass() {
    let e1 = EnumClass.entryOne
    let _ = EnumClass.entryTwo
    
    let _ = EnumClass.entryOne.name
    let _ = EnumClass.entryOne.type
    
    let _ = EnumClass.companion.findByType(type: "entry_two")
    let _ = EnumClass.companion.findByType(type: "entry_two_trheee")
    
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
```

[Kotlin/Native does not yet support enum generation](https://youtrack.jetbrains.com/issue/KT-48068).

### SKIE

SKIE creates real Swift enums, and automatically converts them from Kotlin enums. Enums are exhaustive, so the default is no longer required.

---
[Table of contents](/README.md)