package com.jetbrains.swiftinteropplayground.interfaces

sealed interface SealedInterfaces {

    interface First : SealedInterfaces {
        fun firstFunctionExample(): String
    }

    interface Second : SealedInterfaces {
        fun secondFunctionExample(): String
    }
}

fun sealedInterfaceExample(sie: SealedInterfaces) {
    when (sie) {
        is SealedInterfaces.First -> {
            sie.firstFunctionExample()
        }
        is SealedInterfaces.Second -> {
            sie.secondFunctionExample()
        }
    }
}