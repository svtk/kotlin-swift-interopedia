package com.jetbrains.swiftinteropplayground.common

fun functionThrowsUndeclaredException(){
    throw Exception("Oops!")
}

@Throws(Exception::class)
fun functionThrowsDeclaredException(){
    throw Exception("Oops!")
}