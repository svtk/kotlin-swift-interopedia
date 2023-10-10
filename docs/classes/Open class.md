## Open class

Can inherit from open class, use its protected properties, override open, but not override final methods.

### Explanations

Let's describe Kotlin's open class:

```kotlin
open class OpenClassWithConstructorParams(
    val param1: String,
    val param2: Boolean
) {
    protected val someField: String get() = "14"

    fun finalFunctionInClass() {
        println("Final method in open class")
    }

    open fun functionCanBeOverridden() {
        println("Open method in open class")
    }

}
```

On the Swift side, we can inherit from this class, use its protected properties, override open, but not override final methods (this will give an exception at runtime on construction):

```swift
class OpenClassExample : OpenClassWithConstructorParams {
    override func finalFunctionInClass() {
        print("Final function was overridden")
    }
    
    override func functionCanBeOverridden() {
        print("Open function was overridden")
    }
    
}

func example() {
    let example = OpenClassExample(param1: "123", param2: true)
    let _ = example.someField
    example.finalFunctionInClass()
    example.functionCanBeOverridden()
}
```

---
[Table of contents](/README.md)