## Interface

The interface has become @protocol. But for some reason the val property turned into var.

### Explanations

Let's create an interface on the Kotlin side:

```kotlin
interface Interfaces {

    val id: String

    fun simpleFunction(): String
    fun functionWithParam(param1: String): String
    fun defaultParams(param1: String, param2: Int = 400): String

}

class MyInt : Interfaces {
    // You can manually replace it with var, but val was initially generated
    override var id: String = "1"

    override fun simpleFunction(): String {
        println("simple")
        return "abc"
    }

    override fun functionWithParam(param1: String): String {
        println("with params")
        return "123"
    }

    override fun defaultParams(param1: String, param2: Int): String {
        println("with default params")
        return "234"
    }
}
```

On the Swift side, the interface has turned into `protocol`, and when you try to implement it, the IDE generates the necessary stubs:

```swift
class InterfacesExample : Interfaces {
    func defaultParams(param1: String, param2: Int32) -> String {
        return "param1: \(param1) ; param2: \(param2)"
    }
    
    func functionWithParam(param1: String) -> String {
        return "functionWithParam: \(param1)"
    }
    
    func simpleFunction() -> String {
        return "simpleFunction()"
    }
    
    // From the strange `val id: String` to `var` by default.
    // But this can be manually replaced with `let`
    let id: String = "default"
}

let ex = InterfacesExample()
print(ex.defaultParams(param1: "123", param2: 234))
print(ex.functionWithParam(param1: "abc"))
print(ex.simpleFunction())
```

---
[Table of contents](/README.md)