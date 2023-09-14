package com.jetbrains.swiftinteropplayground.functions

@DslMarker
annotation class DslMarkerExample

data class Experiment(val key: String, val description: String){
}

@DslMarkerExample
class ExperimentsDsl {

    val list = mutableListOf<Experiment>()

    fun enable(experiment: Experiment) {
        list += experiment
    }

}

@DslMarkerExample
class Dsl {
    val experiments = ExperimentsDsl()

    fun experiments(block: ExperimentsDsl.() -> Unit = {}) {
        experiments.block()
    }
}

fun example() {
    Dsl().apply {
        experiments {
            enable(Experiment(key = "key1", description = "desc1"))
        }
    }
}