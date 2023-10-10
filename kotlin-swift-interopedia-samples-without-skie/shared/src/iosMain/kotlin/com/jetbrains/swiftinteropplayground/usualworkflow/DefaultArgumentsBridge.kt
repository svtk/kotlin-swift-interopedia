package com.jetbrains.swiftinteropplayground.usualworkflow

import com.jetbrains.swiftinteropplayground.usualworkflow.DefaultArguments

fun createDefaultArguments(): DefaultArguments {
    return DefaultArguments()
}

fun functionWithDefaultArgument(defaultArguments: DefaultArguments){
    defaultArguments.functionWithDefaultArgument()
}