package com.jetbrains.swiftinteropplayground.functions

fun returnLambda(): () -> String {
    return { "Kotlin Lambda" }
}

fun returnParametrizedLambda(): (String) -> String {
    return { s -> "Kotlin Lambda taking a String argument: $s" }
}
