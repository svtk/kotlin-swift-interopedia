package com.jetbrains.swiftinteropplayground.usualworkflow

class MyClassValProperty(
    param: String
) {
    val property: String = "computed property in Kotlin from $param"
}