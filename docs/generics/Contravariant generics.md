## Contravariant generics

Doesn't work as expected, you have to use a type cast.

### Explanations

In Kotlin, `in T` this is a contravariant generic.

```kotlin
open class SuperClass  
class Child : SuperClass()  
  
class InGenericItem<in T>
  
private fun example(example: InGenericItem<SuperClass>) {  
    val y: InGenericItem<Child> = example // Won't compile without in
}
```

In Objective-C `in` we generated a generic with an indication of its contravariant:

```objective-c
__attribute__((objc_subclassing_restricted))
__attribute__((swift_name("InGenericItem")))
@interface SharedInGenericItem<__contravariant T> : SharedBase
- (instancetype)init __attribute__((swift_name("init()"))) __attribute__((objc_designated_initializer));
+ (instancetype)new __attribute__((availability(swift, unavailable, message="use object initializers instead")));
@end
```

And in theory, similar code in Swift should work:

```swift
open class SuperClass {}
class ChildClass : SuperClass {}

private func inGenericUsage(generic: InGenericItem<SuperClass>) {
    let _: InGenericItem<ChildClass> = generic
}
```

But it doesn't compile, and gives the error:

```
Cannot assign value of type 'InGenericItem<SuperClass>' to type 'InGenericItem<ChildClass>'
```

Through type casting it works:

```swift
inGenericUsage(
    generic: InGenericItem<ChildClass>() as! InGenericItem<SuperClass>
)

private func inGenericUsage(generic: InGenericItem<SuperClass>) {
    let _: InGenericItem<ChildClass> = generic as! InGenericItem<ChildClass>
    print("inGenericUsage - ok")
}
```

---
[Table of contents](/README.md)