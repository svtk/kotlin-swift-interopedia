## Unit and Nothing

The `Unit` and `Nothing` types can be used in the same way as in Kotlin: `Unit` as an object or void, `Nothing` cannot be created.

### Explanations

Let us have a class like this in Kotlin:

```kotlin
class UnitNothing {

    fun unitType(p: Unit) {
    }

    fun nothingType(n: Nothing) {
    }

    fun returnUnit() {
    }

    fun returnNothing(): Nothing {
        throw IllegalStateException()
    }
}
```

After moving to Swift, we get from types `Unit` and `Nothing` types `KotlinUnit` and `KotlinNothing`. In this case, you can create an object of the class `KotlinUnit`, but you cannot create an object of the type `KotlinNothing`.

```swift
let example = UnitNothing()
example.unitType(p: KotlinUnit())
//Doesn't compile - no init() function
//example.nothingType(n: KotlinNothing())
print(example.returnUnit())
//Crashes app - exception
//example.returnNothing()
```

---
[Table of contents](/README.md)