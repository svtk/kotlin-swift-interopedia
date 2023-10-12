## Bounded generics

The generic type restriction doesn't work.

### Explanations

Let's describe a generic class limited to a specific class in Kotlin:

```kotlin
open class ForStricted  
  
class ChildStricted : ForStricted()
  
class StrictedGeneric<T : ForStricted>(val data: T) {  
    fun fetch(): T {  
        return data  
 	}  
}  
  
private fun example() {  
    val s1 = StrictedGeneric(ForStricted())  
    val s2 = StrictedGeneric(ChildStricted())  
	
	// val s3 = StrictedGeneric("123") // Doesn't compile
}
```

.h There is no information about the generic limitation in the Objective-C file:

```objectivec
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("StrictedGeneric")))
@interface SharedStrictedGeneric<T> : SharedBase
- (instancetype)initWithData:(T)data __attribute__((swift_name("init(data:)"))) __attribute__((objc_designated_initializer));
- (T)fetch __attribute__((swift_name("fetch()")));
@property (readonly) T data __attribute__((swift_name("data")));
@end
```

Therefore, in Swift we can compile the following code:

```swift
class MyStricted : ForStricted {}

let _ = StrictedGeneric(data: MyStricted())
let _ = StrictedGeneric(data: NSString("1122")) // Compiles
```

---
[Table of contents](/README.md)