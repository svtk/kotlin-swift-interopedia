## Optional (nullable) primitive types

Some primitive types require mapping into special optional types.

```kotlin
class OptionalPrimitives(
    val optionalByte: Byte?,
    val optionalShort: Short?,
    val optionalInt: Int?,
    val optionalLong: Long?,
    val optionalFloat: Float?,
    val optionalDouble: Double?,
    val optionalString: String?,
    val optionalBoolean: Boolean?
) {

    fun optionalByteType(b: Byte?): Byte? {
        return b
    }

    fun optionalShortType(s: Short?): Short? {
        return s
    }

    fun optionalIntType(i: Int?): Int? {
        return i
    }

    fun optionalLongType(l: Long?): Long? {
        return l
    }

    fun optionalCharType(c: Char?): Char? {
        return c
    }

    fun optionalStringType(s: String?): String? {
        return s
    }

    fun optionalBooleanType(b: Boolean?): Boolean? {
        return b
    }

}
```

On the Swift side, Kotlin nullable types (with the exception of `String?` and `Char?`) are represented by [special data types](https://kotlinlang.org/docs/apple-framework.html#kotlin-numbers-and-nsnumber):

- `Byte?` -> `KotlinByte?`
- `UByte?` -> `KotlinUByte?`
- `Short?` -> `KotlinShort?`
- `UShort?` -> `KotlinUShort?`
- `Int?` -> `KotlinInt?`
- `UInt?` -> `KotlinUInt?`
- `Long?` -> `KotlinLong?`
- `ULong?` -> `KotlinULong?`
- `Float?` -> `KotlinFloat?`
- `Double?` -> `KotlinDouble?`
- `Boolean?` -> `KotlinBoolean?`

And there are two separate cases with `String?` and `Char?`:

- `String?` -> `String?`
- `Char?` -> `Any?`

#### Using literals and nil values

When passing literals or nil values as arguments, the use of these types is no different from Kotlin:

```swift
func optionalTypesExample3() {
    let _ = OptionalPrimitives(
        optionalByte: 1,
        optionalShort: 1,
        optionalInt: 1,
        optionalLong: 1,
        optionalFloat: 1.0,
        optionalDouble: 1.0,
        optionalString: "123",
        optionalBoolean: true
    )
}
```

Since `Char?` is turned into `Any?`, you can pass anything as a value, and it will NOT break the program.

#### Using not-null Swift types

When using Swift data types, additional mapping is required:

```swift
func optionalTypesExample2(
    byteType: Int8,
    shortType: Int16,
    intType: Int32,
    longType: Int64,
    floatType: Float,
    doubleType: Double,
    stringType: String,
    booleanType: Bool
) {
    let _ = OptionalPrimitives(
        optionalByte: KotlinByte(value: byteType),
        optionalShort: KotlinShort(value: shortType),
        optionalInt: KotlinInt(value: intType),
        optionalLong: KotlinLong(value: longType),
        optionalFloat: KotlinFloat(value: floatType),
        optionalDouble: KotlinDouble(value: doubleType),
        optionalString: stringType,
        optionalBoolean: KotlinBoolean(value: booleanType)
    )
}
```

#### Using optional Swift types

When using optional Swift types, mapping becomes more cumbersome due to checking for nil:

```swift
func optionalTypesExample(
    optionalByte: Int8?,
    optionalShort: Int16?,
    optionalInt: Int32?,
    optionalLong: Int64?,
    optionalFloat: Float?,
    optionalDouble: Double?,
    optionalString: String?,
    optionalBoolean: Bool?
) {
    let _ = OptionalPrimitives(
        optionalByte: (optionalByte != nil) ? KotlinByte(value: optionalByte!) : nil,
        optionalShort: (optionalShort != nil) ? KotlinShort(value: optionalShort!) : nil,
        optionalInt: (optionalInt != nil) ? KotlinInt(value: optionalInt!) : nil,
        optionalLong: (optionalLong != nil) ? KotlinLong(value: optionalLong!) : nil,
        optionalFloat: (optionalFloat != nil) ? KotlinFloat(value: optionalFloat!) : nil,
        optionalDouble: (optionalDouble != nil) ? KotlinDouble(value: optionalDouble!) : nil,
        optionalString: optionalString,
        optionalBoolean: (optionalBoolean != nil) ? KotlinBoolean(value: optionalBoolean!) : nil
    )
}
```

---
[Table of contents](/README.md)