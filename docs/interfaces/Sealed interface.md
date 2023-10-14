## Sealed interface

Separate protocols were generated that were not related to each other.

### Explanations

Let's describe the sealed interface on the Kotlin side; in the `when` expression there is autocompletion with consideration of all options:

```kotlin
sealed interface SealedInterfaces {

    interface First : SealedInterfaces {
        fun firstFunctionExample(): String
    }

    interface Second : SealedInterfaces {
        fun secondFunctionExample(): String
    }
}

fun sealedInterfaceExample(sie: SealedInterfaces) {
    when (sie) {
        is SealedInterfaces.First -> {
            sie.firstFunctionExample()
        }
        is SealedInterfaces.Second -> {
            sie.secondFunctionExample()
        }
    }
}
```

On the Swift side, separate protocols were generated that are not inherited from each other, this can be seen from the `.h` Objective-C file: 

```objective-c
__attribute__((swift_name("SealedInterfaces")))
@protocol SharedSealedInterfaces
@required
@end

__attribute__((swift_name("SealedInterfacesFirst")))
@protocol SharedSealedInterfacesFirst <SharedSealedInterfaces>
@required
- (NSString *)firstFunctionExample __attribute__((swift_name("firstFunctionExample()")));
@end

__attribute__((swift_name("SealedInterfacesSecond")))
@protocol SharedSealedInterfacesSecond <SharedSealedInterfaces>
@required
- (NSString *)secondFunctionExample __attribute__((swift_name("secondFunctionExample()")));
@end
```

Accordingly, when substituting into a `switch` the IDE does not offer to consider all branch options.

```swift
func switchOnSealedInterfaces(sealedInterfaces: SealedInterfaces){
    switch(sealedInterfaces){
    case is SealedInterfacesFirst: print((sealedInterfaces as! any SealedInterfacesFirst as SealedInterfacesFirst).firstFunctionExample())
    case is SealedInterfacesSecond: print((sealedInterfaces as! any SealedInterfacesSecond as SealedInterfacesSecond).secondFunctionExample())
    default: print("default")
}
```

In Swift, the role of sealed interfaces is played by enums, and it would be possible to write special bridge code to convert a sealed interface into a Swift enum. See [a possible approach](/docs/classes/Sealed%20class.md).

---
[Table of contents](/README.md)
