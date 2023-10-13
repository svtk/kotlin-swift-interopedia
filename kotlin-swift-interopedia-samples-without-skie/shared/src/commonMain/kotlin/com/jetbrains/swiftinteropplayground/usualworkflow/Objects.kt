package com.jetbrains.swiftinteropplayground.usualworkflow

class DataClassExample(param1: String, param2: Int, param3: Boolean)

object ObjectExample {

    const val CONST_VAL_EXAMPLE = "ObjectExample.CONST_VAL_EXAMPLE"

    val someVal = DataClassExample(
        param1 = "someVal.param1",
        param2 = 200,
        param3 = false
    )

    fun functionExample(): String {
        return "ObjectExample.functionExample()"
    }

    fun paramFunctionExample(funcParam1: String): String {
        return "ObjectExample.paramFunctionExample($funcParam1)"
    }

}

fun objectsExample() {
    ObjectExample.CONST_VAL_EXAMPLE
    ObjectExample.someVal
    ObjectExample.functionExample()
    ObjectExample.paramFunctionExample("123")
}