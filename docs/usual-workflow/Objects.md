## Objects 

Access is available through the shared auxiliary object.

### Explanations

In Kotlin, working with objects is reminiscent of working with static methods and constants in Java. That is:

```kotlin
class DataClassExample(param1: String, param2: Int, param3: Boolean)

object ObjectExample {

    const val CONST_VAL_EXAMPLE = "ObjectExample.CONST_VAL_EXAMPLE"

    val someVal = DataClassExample(
        param1 = "someVal.param1",
        param2 = 200,
        param3 = false
    )

    fun functionExample(): String {
        return "ObjectExample.functionExample()"
    }

    fun paramFunctionExample(funcParam1: String): String {
        return "ObjectExample.paramFunctionExample($funcParam1)"
    }
}

fun objectsExample() {
    ObjectExample.CONST_VAL_EXAMPLE
    ObjectExample.someVal
    ObjectExample.functionExample()
    ObjectExample.paramFunctionExample("123")
}
```

In Swift, to access the internals of an object, [an called `shared` appears](https://kotlinlang.org/docs/whatsnew1530.html#improved-swift-objective-c-mapping-for-objects-and-companion-objects), which can be accessed through a class:

```swift
ObjectExample.shared.CONST_VAL_EXAMPLE
ObjectExample.shared.someVal
ObjectExample.shared.functionExample()
ObjectExample.shared.paramFunctionExample(funcParam1: "123")
```

And the object, by the way, even if created through `init`, will be a singleton.

---
[Table of contents](/README.md)