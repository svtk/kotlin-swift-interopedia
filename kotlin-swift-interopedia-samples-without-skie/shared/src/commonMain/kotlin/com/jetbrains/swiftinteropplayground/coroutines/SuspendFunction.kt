package com.jetbrains.swiftinteropplayground.coroutines
import com.rickclephas.kmp.nativecoroutines.NativeCoroutines
import kotlinx.coroutines.delay
import kotlin.time.Duration.Companion.milliseconds
data class Thing(val item: Int)

class ThingRepository {

    @NativeCoroutines
    suspend fun getThing(succeed: Boolean): Thing {
        delay(100.milliseconds)
        if (succeed) {
            return Thing(0)
        } else {
            error("oh no!")
        }
    }
}