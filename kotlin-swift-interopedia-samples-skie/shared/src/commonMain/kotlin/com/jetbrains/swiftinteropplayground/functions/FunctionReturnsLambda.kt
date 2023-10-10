package com.jetbrains.swiftinteropplayground.functions

fun returnLambda(): () -> Unit {
    println("Function that returns lambda")

    return {
        println("Lambda inside return")
    }
}

fun returnParametrizedLambda(): (String) -> Unit {
    println("Function that returns parametrized lambda")

    return {
        println("returnParametrizedLambda | it: $it")
    }
}
