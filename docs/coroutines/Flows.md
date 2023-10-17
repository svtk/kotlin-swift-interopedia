## Flows

Translated into callback, experimentally - into async / await. Generic type arguments are lost. Libraries like SKIE and KMP-NativeCoroutines can be used to improve the interop and provide cancellation support.

### Explanations

Let's describe a class that creates a Kotlin `Flow`:

```kotlin
class NumberFlowRepository {
    fun getNumbers(): Flow<Int> = flow {
        for (i in 1..10) {
            emit(i)
            delay(1.seconds)
        }
    }
}
```

On the Swift side, it's necessary to create a `Flow` collector, but the generic type argument of the `Flow` is lost and instead the `Any?` type must be used.

```swift
class AnyCollector : Kotlinx_coroutines_coreFlowCollector {
    func emit(value: Any?) async throws {
        print("Got number: \(value!)")
    }
}

Task {
    try await NumberFlowRepository().getNumbers().collect(collector: AnyCollector())
}
```

This approach does not have cancellation support.

## KMP-NativeCoroutines
[KMP-NativeCoroutines](https://github.com/rickclephas/KMP-NativeCoroutines) is a library that can improve the interop and provides cancellation support. It is compatible with async/await, Combine, and RxSwift approaches to concurrency on iOS.

In Kotlin it is:
```kotlin
class NumberFlowRepository {
    @NativeCoroutines
    fun getNumbers(): Flow<Int> = flow {
        for (i in 1..10) {
            emit(i)
            delay(1.seconds)
        }
    }
}
```

In Swift:
```swift
Task {
    do {
        let sequence = asyncSequence(for: NumberFlowRepository().getNumbers())
        for try await number in sequence {
            print("Got number: \(number)")
        }
    } catch {
        print("Failed with error: \(error)")
    }
}
```

Please follow [the setup instructions](https://github.com/rickclephas/KMP-NativeCoroutines#installation) in the KMP-NativeCoroutines documentation for the Gradle setup instructions. 

## SKIE
SKIE is also improves the interop and provides cancellation support. SKIE is only compatible with async/await.

In Kotlin it is the same as the original:

```kotlin
class NumberFlowRepository {
    fun getNumbers(): Flow<Int> = flow {
        for (i in 1..10) {
            emit(i)
            delay(1.seconds)
        }
    }
}
```

In Swift:
```swift
Task {
    for await it in NumberFlowRepository().getNumbers() {
        print("Got number: \(it)")
    }
}
```

Please follow [the setup instructions](https://skie.touchlab.co/Installation) in the SKIE documentation for the Gradle setup instructions.

---
[Table of contents](/README.md)