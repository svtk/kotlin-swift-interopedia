package com.jetbrains.swiftinteropplayground.classes

sealed class SealedClass {
    object Object : SealedClass()

    class Simple(val param1: String) : SealedClass()

    data class Data(val param1: String, val param2: Boolean) : SealedClass()
}