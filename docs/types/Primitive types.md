## Primitive types

May require mapping for integer data types and mapping for Char.

### Explanations

Let's describe a Kotlin class that uses various Kotlin primitive types:

```kotlin
class PrimitiveTypesClass {

    fun byteType(b: Byte): Byte {
        return b
    }

    fun shortType(s: Short): Short {
        return s
    }

    fun intType(i: Int): Int {
        return i
    }

    fun longType(l: Long): Long {
        return l
    }

    fun floatType(f: Float): Float {
        return f
    }

    fun doubleType(d: Double): Double {
        return d
    }

    fun stringType(s: String): String {
        return s
    }

    fun booleanType(b: Boolean): Boolean {
        return b
    }

    fun charType(c: Char): Char {
        return c
    }

}
```

#### Integer data types (Byte/Short/Int/Long)

Kotlin integer data types are converted to Swift types as follows:

- `Byte` -> `Int8`
- `UByte` -> `UInt8`
- `Short` -> `Int16`
- `UShort` -> `UInt16`
- `Int` -> `Int32`
- `UInt` -> `UInt32`
- `Long` -> `Int64`
- `ULong` -> `UInt64`

If you use literals or arguments of the specified Swift types, no additional effort is required:

```swift
func integerTypesExample(
    byteType: Int8,
    shortType: Int16,
    intType: Int32,
    longType: Int64
) {
    let types = PrimitiveTypesClass()
    
    let _: Int8 = types.byteType(b: 1)
    let _: Int8 = types.byteType(b: byteType)
    
    let _: Int16 = types.shortType(s: 1)
    let _: Int16 = types.shortType(s: shortType)
    
    let _: Int32 = types.intType(i: 1)
    let _: Int32 = types.intType(i: intType)
    
    let _: Int64 = types.longType(l: 1)
    let _: Int64 = types.longType(l: longType)
}
```

If you need to use a Swift type `Int`, additional mappings will be required:

```swift
func swiftIntTypeExample(swiftIntType: Int) {
    let types = PrimitiveTypesClass()
    
    let _: Int = Int( types.byteType(b: Int8(swiftIntType)) )
    let _: Int = Int( types.shortType(s: Int16(swiftIntType)) )
    let _: Int = Int( types.intType(i: Int32(swiftIntType)) )
    let _: Int = Int( types.longType(l: Int64(swiftIntType)) )
}
```

#### Real data types (Float / Double)

Kotlin real types are converted to the corresponding Swift real types (`Float`-> `Float`, `Double`-> `Double`), no additional mappings are required:

```swift
func realTypesExample(
    floatType: Float,
    doubleType: Double
) {
    let types = PrimitiveTypesClass()
    
    let _: Float = types.floatType(f: 1.0)
    let _: Float = types.floatType(f: floatType)
    
    let _: Double = types.doubleType(d: 1.0)
    let _: Double = types.doubleType(d: doubleType)
}
```

#### Character data type (Char)

The type `Char` on the Swift side is converted into a type `unichar`, which is not very convenient to work with:

```swift
func charTypeExample(
    unicharType: unichar,
    stringType: String
) {
    let types = PrimitiveTypesClass()
    
    let _: unichar = types.charType(c:  ("a" as NSString).character(at: 0))
    let _: unichar = types.charType(c: unicharType)
    let _: unichar = types.charType(c: (stringType as NSString).character(at: 0))
}
```

#### Strings (String)

There are no problems with the data type `String`; it is converted to a Swift type `String` without additional mappings:

```swift
func stringTypeExample(stringType: String) {
    let types = PrimitiveTypesClass()
    
    let _: String = types.stringType(s: "123")
    
    let _: String = types.stringType(s: stringType)
}
```

#### Boolean data type

There are no problems with `Boolean`-, it is converted to Swift type `Bool` without additional mappings:

```swift
func boolTypeExample(boolType: Bool) {
    let types = PrimitiveTypesClass()
    
    let _: Bool = types.booleanType(b: true)
    let _: Bool = types.booleanType(b: false)
    
    let _: Bool = types.booleanType(b: boolType)
}
```

---
[Table of contents](/README.md)