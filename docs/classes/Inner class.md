## Inner class

TL;DR: Minor differences in creation syntax

### Explanations

Let's create a small inner class in Kotlin:

```kotlin
class OuterClass(
    val param: String
) {

    fun parentFunc() {}

    inner class InnerClass {
        fun useSomeFunction() {
            println("this@OuterClass.param == ${this@OuterClass.param}")
        }
    }
}

private fun example() {
    val inner = OuterClass("12").InnerClass()
}
```

In Swift, the syntax for creating an instance of the inner class changes slightly, you need to explicitly pass the parent class to the constructor:

```swift
let _ = OuterClass.InnerClass(OuterClass(param: "1323"))
```

---
[Table of contents](/README.md)