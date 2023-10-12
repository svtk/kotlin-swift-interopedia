package com.jetbrains.swiftinteropplayground.functions

fun funcWithVararg(vararg item: String) {
    println(item.joinToString { "$it | " })
}