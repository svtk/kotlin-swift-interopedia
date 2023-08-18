## JavaDoc comments

### Explanation

[As of Kotlin 1.5.20, it is possible to forward JavaDoc comments.](https://kotlinlang.org/docs/whatsnew1520.html#opt-in-export-of-kdoc-comments-to-generated-objective-c-headers) To do this, you need to enable comment generation in the shared module's build.gradle.kts file:

```kotlin
kotlin {
    targets.withType<org.jetbrains.kotlin.gradle.plugin.mpp.KotlinNativeTarget> {
        compilations["main"].kotlinOptions.freeCompilerArgs += "-Xexport-kdoc"  
    }
}
```

After that, on the XCode side, you can see comments on the class and methods in autocompletion. If you go to the definition of functions (in the .h file), you can see comments on @param / @return, etc.

Note: many KDoc features are not supported, such as @property.

---
[Table of contents](/README.md)