package com.jetbrains.swiftinteropplayground.usualworkflow

fun String.extensionFunctionOverStringClass() {
    println(this) //Do something
}

fun extensionFunctionOverPlatformClassExample() {
    "123".extensionFunctionOverStringClass()
}