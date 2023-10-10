package com.jetbrains.swiftinteropplayground.android

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material.Button
import androidx.compose.material.MaterialTheme
import androidx.compose.material.Surface
import androidx.compose.material.Text
import androidx.compose.ui.Modifier
import com.jetbrains.swiftinteropplayground.functions.funcWithExtension
import com.jetbrains.swiftinteropplayground.functions.returnLambda
import com.jetbrains.swiftinteropplayground.functions.returnParametrizedLambda
import com.jetbrains.swiftinteropplayground.functions.simpleFunction

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            MyApplicationTheme {
                Surface(
                    modifier = Modifier.fillMaxSize(),
                    color = MaterialTheme.colors.background
                ) {
                    Column {
                        Text("Swift Interop Playground")
                        Button(onClick = {
                            runTests()
                        }) {
                            Text("Go")
                        }
                    }
                }
            }
        }
    }

    private fun runTests(){
//        FunctionReturnsLambdaExample().example()
//        FunctionReturnsPrimitiveExample().example()
        FunctionWithExtensionExample().example()
    }
}

class FunctionReturnsLambdaExample() {
    fun example() {
        returnLambda().invoke()
        returnParametrizedLambda().invoke("123")
        println("FunctionReturnsLambdaExample: All ok")
    }
}

class FunctionReturnsPrimitiveExample {
    fun example() {
        val result = simpleFunction()
        println(result)
    }
}

class FunctionWithExtensionExample {
    fun example() {
        funcWithExtension {
            this.param1 = "changed"
            this.param2 = 2
            this.param3 = 3L
            this.param4 = 4.0f
            this.param5 = 5.0
            this.param6 = true
            println("$param1 $param2 $param3 $param4 $param5 $param6")
        }
    }
}
