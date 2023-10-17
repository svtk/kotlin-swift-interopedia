package com.jetbrains.swiftinteropplayground.coroutines

import kotlinx.coroutines.delay
import kotlin.time.Duration.Companion.milliseconds
data class Thing(val item: Int)

class ThingRepository {

    suspend fun getThing(succeed: Boolean): Thing {
        delay(100.milliseconds)
        if (succeed) {
            return Thing(0)
        } else {
            error("oh no!")
        }
    }
}