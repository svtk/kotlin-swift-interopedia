package com.jetbrains.swiftinteropplayground.usualworkflow

fun createDefaultArguments(): FunctionWithDefaultArgumentsClass {
    return FunctionWithDefaultArgumentsClass()
}

fun functionWithDefaultArgument(defaultArguments: FunctionWithDefaultArgumentsClass){
    defaultArguments.functionWithDefaultArgument()
}