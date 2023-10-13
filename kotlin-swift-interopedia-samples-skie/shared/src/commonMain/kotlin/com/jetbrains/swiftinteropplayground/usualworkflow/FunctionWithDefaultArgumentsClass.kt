package com.jetbrains.swiftinteropplayground.usualworkflow

import co.touchlab.skie.configuration.annotations.DefaultArgumentInterop

class FunctionWithDefaultArgumentsClass(val arg1: Int = 1) {

    @DefaultArgumentInterop.Enabled
    fun functionWithDefaultArgument(arg2: Int = 2) {
        println(arg2)
    }

}