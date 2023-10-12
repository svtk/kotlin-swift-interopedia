## Star projection

Doesn't work as expected, you have to use a type cast.

### Explanations

In Kotlin - `Star projection` is a combination of concepts `in` and `out`:

```kotlin
class MyGeneric<T : Any>(val data: T) {
    val state: T get() = data

    fun someStarProjection(myGeneric: MyGeneric<*>) {
        println("myGeneric: ${myGeneric}")
    }
}

fun starProjectionExample() {
    val myGeneric = MyGeneric(1)

    myGeneric.someStarProjection(myGeneric)
    myGeneric.someStarProjection(MyGeneric("11"))
}
```

In Objective-C we get this header:

```objective-c
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("MyGeneric")))
@interface SharedMyGeneric<T> : SharedBase
- (instancetype)initWithData:(T)data __attribute__((swift_name("init(data:)"))) __attribute__((objc_designated_initializer));
- (void)someStarProjectionMyGeneric:(SharedMyGeneric<id> *)myGeneric __attribute__((swift_name("someStarProjection(myGeneric:)")));
@property (readonly) T data __attribute__((swift_name("data")));
@property (readonly) T state __attribute__((swift_name("state")));
@end
```

On the Swift side we use type casts:

```swift
private func starGenericProjecton() {
	let starProj = MyGeneric(data: NSNumber(12))

	starProj.someStarProjection(myGeneric: starProj as! MyGeneric<AnyObject>)
	starProj.someStarProjection(
		myGeneric: MyGeneric<AnyObject>(data: NSString("111"))
	)
}
```

---
[Table of contents](/README.md)