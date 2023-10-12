package com.jetbrains.swiftinteropplayground.functions

@DslMarker
annotation class DslMarkerExample

data class Experiment(val key: String, val description: String)

@DslMarkerExample
data class ExperimentsDsl(val list: MutableList<Experiment> = mutableListOf<Experiment>()) {
    fun enable(experiment: Experiment) {
        list += experiment
    }

}

@DslMarkerExample
data class Dsl(val experiments: ExperimentsDsl = ExperimentsDsl()) {
    fun experiments(block: ExperimentsDsl.() -> Unit = {}) {
        experiments.block()
    }
}

fun example() {
    val dsl = Dsl().apply {
        experiments {
            enable(Experiment(key = "key1", description = "desc1"))
        }
    }
    println(dsl)
}