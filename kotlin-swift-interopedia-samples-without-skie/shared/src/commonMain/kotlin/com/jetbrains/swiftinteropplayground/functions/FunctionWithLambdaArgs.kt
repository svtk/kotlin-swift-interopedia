package com.jetbrains.swiftinteropplayground.functions
fun funcWithLambda(calculation: () -> Int): Int {
    return 100 + calculation.invoke()
}

fun funcWithSeveralLambdas(
    calculation: () -> Int,
    formatting: (String) -> String
): String {
    val calculationResult = calculation.invoke()
    return formatting.invoke(calculationResult.toString())
}

fun funcWithParametrizedLambda(parametrizedLambda: (String) -> String): String {
    return "FunctionWithLambdaArgs.funcWithParametrizedLambda(resultFromLambda: ${parametrizedLambda.invoke("paramForLambda")})"
}

fun funcWithUnitLambda(unitLambda: () -> Unit) {
    println("FunctionWithLambdaArgs.funcWithUnitLambda() begin")
    unitLambda.invoke()
    println("FunctionWithLambdaArgs.funcWithUnitLabmda() end")
}