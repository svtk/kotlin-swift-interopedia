package com.jetbrains.swiftinteropplayground.usualworkflow

val String.myExtensionProperty: String get() = "789"

fun extensionPropertyPlatformClassExample() {
    println("123".myExtensionProperty)
}