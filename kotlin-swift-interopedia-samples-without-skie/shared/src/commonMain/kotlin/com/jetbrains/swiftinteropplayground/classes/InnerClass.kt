package com.jetbrains.swiftinteropplayground.classes

class OuterClass(
    val param: String
) {
    fun parentFunc() {}
    inner class InnerClass {
        fun useSomeFunction(): String {
            return "this@OuterClass.param == $param"
        }
    }
}