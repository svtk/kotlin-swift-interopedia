## Covariant generics
Doesn't work as expected, you have to use a type cast.

### Explanations

In Kotlin, a keyword `out` defines a covariant generic that can produce data.

```kotlin
class OutGeneric<out T>(data: T) {  
    val myState = data  
    fun pullState(): T = myState  
}  
  
private fun example(param: OutGeneric<String>) {  
    val t: OutGeneric<Any> = param    // Doesn't compile without out 
}
```

In Objective-C there is an indication that generic is covariant:

```objective-c
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("OutGeneric")))
@interface SharedOutGeneric<__covariant T> : SharedBase
- (instancetype)initWithData:(T _Nullable)data __attribute__((swift_name("init(data:)"))) __attribute__((objc_designated_initializer));
- (T _Nullable)pullState __attribute__((swift_name("pullState()")));
@property (readonly) T _Nullable myState __attribute__((swift_name("myState")));
@end
```

But in Swift this covariance is lost, you have to use type casting:

```swift
private func outGenericUsage(generic: OutGeneric<NSString>) {
	let _: OutGeneric<AnyObject> = generic as! OutGeneric<AnyObject>
}
```

---
[Table of contents](/README.md)