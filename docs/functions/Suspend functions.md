## Suspend functions

Translated into callback, experimentally - into async / await. Libraries like SKIE and KMP-NativeCoroutines can be used to improve the interop.

### Explanations

Let's describe a class that uses Kotlin suspend functions:

```kotlin
data class Thing(val item: Int)

class ThingRepository {
    suspend fun getThing(succeed: Boolean): Thing {
        delay(100.milliseconds)
        if (succeed) {
            return Thing(0)
        } else {
            error("oh no!")
        }
    }
}
```

On the Swift side, the suspend function [turns into a completion handler](https://kotlinlang.org/docs/native-objc-interop.html#suspending-functions).

```swift
ThingRepository().getThing(succeed: true, completionHandler: { thing, error in
    // do something
})
```

With Kotlin 1.5.30, [an experimental opportunity has appeared to map suspend functions as async/await](https://kotlinlang.org/docs/whatsnew1530.html#experimental-interoperability-with-swift-5-5-async-await). 

## KMP-NativeCoroutines
[KMP-NativeCoroutines](https://github.com/rickclephas/KMP-NativeCoroutines) is a library that can improve the interop. It is compatible with async/await, Combine, and RxSwift.

In Kotlin it is:
```kotlin
@NativeCoroutines
suspend fun getThing(succeed: Boolean): Thing {
    delay(100.milliseconds)
    if (succeed) {
        return Thing(0)
    } else {
        error("oh no!")
    }
}
```

In Swift:
```swift
Task {
    do {
        let result = try await asyncFunction(for: ThingRepository().getThing(succeed: true))
        print("Got result: \(result)")
    } catch {
        print("Failed with error: \(error)")
    }
}
```

Please follow the setup instructions on the KMP-NativeCoroutines landing page. 

## SKIE
SKIE is only compatible with async/await. 

In Kotlin it is the same as the original:
```kotlin
suspend fun getThing(succeed: Boolean): Thing {
    delay(100.milliseconds)
    if (succeed) {
        return Thing(0)
    } else {
        error("oh no!")
    }
}
```

In Swift:
```swift
Task {
    let result = try await ThingRepository().getThing(succeed: true)
    print("Got result: \(result)")
}
```

Please follow the setup instructions on the SKIE landing page.

---
[Оглавление](/README.md)