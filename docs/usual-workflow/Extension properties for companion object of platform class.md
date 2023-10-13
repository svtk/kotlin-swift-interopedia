## Extension properties for companion object of platform class

There is a property in the .h file, but in Swift it’s impossible to use.

### Explanations

On the Kotlin side, an extension property was declared for the companion object of the platform class:

```kotlin
val String.Companion.MY_CONST_VAL: String get() = "123"
```

It is not possible to access this property from Swift. Moreover, in the Objective-C `.h` file this constant is visible:

```objective-c
@interface SharedKotlinStringCompanion (Extensions)
@property (readonly) NSString *MY_CONST_VAL __attribute__((swift_name("MY_CONST_VAL")));
@end;
```

---
[Table of contents](/README.md)