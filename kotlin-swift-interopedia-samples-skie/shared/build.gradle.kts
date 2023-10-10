import co.touchlab.skie.configuration.DefaultArgumentInterop

plugins {
    kotlin("multiplatform")
    id("com.android.library")
    id("co.touchlab.skie") version ("0.5.0")
}

@OptIn(org.jetbrains.kotlin.gradle.ExperimentalKotlinGradlePluginApi::class)
kotlin {
    targetHierarchy.default()

    targets.withType<org.jetbrains.kotlin.gradle.plugin.mpp.KotlinNativeTarget> {
        compilations.get("main").compilerOptions.options.freeCompilerArgs.add("-Xexport-kdoc")
    }

    android {
        compilations.all {
            kotlinOptions {
                jvmTarget = "1.8"
            }
        }
    }
    
    listOf(
        iosX64(),
        iosArm64(),
        iosSimulatorArm64()
    ).forEach {
        it.binaries.framework {
            baseName = "shared"
        }
    }

    sourceSets {
        val commonMain by getting {
            dependencies {
                //put your multiplatform dependencies here
            }
        }
        val commonTest by getting {
            dependencies {
                implementation(kotlin("test"))
            }
        }
    }
}

android {
    namespace = "com.jetbrains.swiftinteropplayground"
    compileSdk = 33
    defaultConfig {
        minSdk = 21
    }
}

skie {
    features {
        group {
            DefaultArgumentInterop.Enabled(true)
        }
    }
}