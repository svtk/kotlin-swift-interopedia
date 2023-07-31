package com.jetbrains.swiftinteropplayground

class DefaultArgumentsBridge {

    fun createDefaultArguments(): DefaultArguments{
        return DefaultArguments()
    }

    fun callDefaultArguments(defaultArguments: DefaultArguments){
        defaultArguments.callFunctionWithDefaultArgument()
    }

}