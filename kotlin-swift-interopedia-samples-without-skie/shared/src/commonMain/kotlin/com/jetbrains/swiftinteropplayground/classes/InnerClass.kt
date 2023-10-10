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