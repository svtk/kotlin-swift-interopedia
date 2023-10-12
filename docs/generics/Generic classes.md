## Generic classes

There are some features of using types.

### Explanations

Let's describe a generic-class in Kotlin:

```kotlin
class StateHolderWithoutAny<T>(data: T) {
    val myState = data
    fun pullState(): T = myState
}
```

[You can't make generic over primitive types](https://stackoverflow.com/questions/51196984/objective-c-generic-containing-a-scalar/51197180#51197180). The interop is carried out through Objective-c, which does not allow this to be done.

What types cannot be substituted:

- `Int` / `Int8` / `Int16` / `Int32` / `Int64`
- `Float` / `Double`
- `String`
- `Bool`

But you can get `NSNumber` by `NSString`.

Another feature is related to nullability - similar to generic functions. The type `T` is interpreted as `Any?`, so additional unwrapping has to be introduced:

```swift
let result1: NSString = StateHolderWithoutAny<NSString>(data:"'222'").pullState()!
```

In order for Swift to see that the type is definitely not null, you need to use the boundary syntax on the Kotlin side:

```kotlin
class StateHolderWithAny<T : Any>(data: T) {
    val myState = data
    fun pullState(): T = myState
}
```

---
[Table of contents](/README.md)