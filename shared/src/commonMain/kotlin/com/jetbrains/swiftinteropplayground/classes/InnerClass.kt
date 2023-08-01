package com.jetbrains.swiftinteropplayground.classes

class OuterClass(
    val param: String
) {

    fun parentFunc() {}

    inner class InnerClass {
        fun useSomeFunction() {
            println("this@OuterClass.param == ${this@OuterClass.param}")
        }
    }
}

private fun example() {
    val inner = OuterClass("12").InnerClass()
}