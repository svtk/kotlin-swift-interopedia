## Generic interfaces

Generic interfaces are not supported.

### Explanations

Let's describe an interface with a Kotlin generic:

```kotlin
interface SocketConverter<T : Any> {  
    fun convert(element: String): T  
}
```

When interopping, information about the generic on this interface is lost, this can be seen from `.h` the file:

```objective-c
__attribute__((swift_name("SocketConverter")))
@protocol SharedSocketConverter
@required
- (id)convertElement:(NSString *)element __attribute__((swift_name("convert(element:)")));
@end
```

But generics are [not yet supported](https://kotlinlang.org/docs/native-objc-interop.html#generics) on interfaces. In Swift itself, you can create a protocol with a generic parameter.

---
[Table of contents](/README.md)