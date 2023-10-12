package com.jetbrains.swiftinteropplayground.functions

inline fun inlineFunction(action: () -> Unit) {
    println("FunctionsExample.inlineFunction() begin")
    action.invoke()
    println("FunctionsExample.inlineFunction() end")
}