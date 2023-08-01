package com.jetbrains.swiftinteropplayground.classes

sealed class SealedClass {
    object Object : SealedClass()

    class Simple(val param1: String) : SealedClass()

    data class Data(val param1: String, val param2: Boolean) : SealedClass()
}

private fun example(s: SealedClass) {
    when (s) {
        SealedClass.Object -> TODO()
        is SealedClass.Simple -> TODO()
        is SealedClass.Data -> TODO()
    }
}