## DSL

DSLs in Kotlin are not DSLs in Swift. More specifically, functions with receivers were generated, but it does not look as convenient as we would like.

### Explanations

In Kotlin, it is possible to create a DSL based on many extension functions that need to be passed inside other functions. For example - [DSL for UI tests](https://habr.com/ru/company/hh/blog/455042/).

```kotlin
@DslMarker
annotation class DslMarkerExample

data class Experiment(val key: String, val description: String)

@DslMarkerExample
class ExperimentsDsl() {
    val experimentList: MutableList<Experiment> = mutableListOf<Experiment>()

    fun enable(experiment: Experiment) {
        experimentList += experiment
    }

}

@DslMarkerExample
class Dsl() {
    val experimentsDsl: ExperimentsDsl = ExperimentsDsl()

    fun experiments(block: ExperimentsDsl.() -> Unit = {}) {
        experimentsDsl.block()
    }
}

fun example() {
    val dsl = Dsl().apply {
        experiments {
            enable(Experiment(key = "key1", description = "desc1"))
        }
    }
}
```

But when moving to Swift, extension functions in arguments turn into functions with parameters, which does not look the way we would like:

```swift
private func dslBlock(block: (Dsl) -> Dsl) -> Dsl {
    var dsl = Dsl()
    dsl = block(dsl)
    return dsl
}

func example(){
    dslBlock { dsl in
        dsl.experiments { e in e.enable(experiment: Experiment(key: "key1", description: "param123")) }
        return dsl
    }
}
```

In Swift, you can find an [article](https://habr.com/ru/company/tinkoff/blog/455760/) on Habr about DSL in Swift, and there is also a [GitHub repository](https://github.com/carson-katri/awesome-result-builders) with a list of Swift libraries built on DSL.

---
[Table of contents](/README.md)