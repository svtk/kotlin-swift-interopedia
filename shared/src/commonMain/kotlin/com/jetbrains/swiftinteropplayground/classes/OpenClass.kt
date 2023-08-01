package com.jetbrains.swiftinteropplayground.classes

open class OpenClassWithConstructorParams(
    val param1: String,
    val param2: Boolean
) {
    protected val someField: String get() = "14"

    fun finalFunctionInClass() {
        println("Final method in open class")
    }

    open fun functionCanBeOverridden() {
        println("Open method in open class")
    }

}