package com.jetbrains.swiftinteropplayground.functions

import kotlin.jvm.JvmInline

@JvmInline
value class ValueClassExample(val t: Int)

fun valueClassUsageExample(v: ValueClassExample): String {
    return "Value class usage example | ${v.t}"
}