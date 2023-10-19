import Foundation
import shared

struct InteropSection: Identifiable {
    let id = UUID()
    let title: String
    let samples: [InteropSample]
}

struct InteropSample: Identifiable {
    let id = UUID()
    let title: String
    var description: String = ""
    let action: @MainActor () -> ()
}

let outputMarker = "Sample output: "
let printedToConsoleNote = "Sample output is printed to the console."

func sections() -> [InteropSection] {
    [overviewSection(),
     functionsAndPropertiesSection(),
     moreAboutFunctionsSection(),
     typesSection(),
     classesAndIntefacesSection(),
     coroutinesSection(),
     genericsSection()]
}

func overviewSection() -> InteropSection {
    InteropSection(title: "Overview", samples: [
        InteropSample(
            title: "Classes and functions",
            description: "You can create Kotlin classes and call Kotlin functions from Swift: SimpleClass().simpleFunction()."
        ) {
            simpleClassAndFunctionExample()
        },

        InteropSample(
            title: "Top level function",
            description: "You access a top-level function via the wrapper class: TopLevelFunctionKt.topLevelFunction()."
        ) {
            topLevelFunctionExample()
        },

        InteropSample(
            title: "KDoc Comments",
            description: """
                         You can see the KDoc comments at development time.
                         In Xcode, use Option+Double left click to see the docs. Note that many KDocs features
                         don't work in Xcode, like properties on constructors (@property) aren't visible.
                         In Fleet, use the 'Show Documentation' action.
                         """
        ) {
            let comments = KDocComments(commentProperty: "property")
            comments.commentFunction(arg1: 3)
        },
        InteropSample(
            title: "Collections",
            description: "TODO"
        ) {
        },
        InteropSample(
            title: "Types",
            description: "TODO"
        ) {

        },
        InteropSample(
            title: "Exceptions",
            description:
            """
            If you invoke a Kotlin function that throws an exception and
            doesn't declare it with `@Throws`, that crashes the app.
            Declared exceptions are converted to NSError and must be handled.
            """
        ) {
            checkedExeptionExample()
            // This crashes the app:
            //uncheckedExceptionExample()
        }
    ])
}

func classesAndIntefacesSection() -> InteropSection {
    InteropSection(title: "Classes and interfaces", samples: [
        InteropSample(
            title: "Abstract classes",
            description: """
                         IDE has no hints to override abstract methods,
                         rather we get a crash when trying to use the method during runtime.
                         """
        ) {
            print("""
                  Try uncomment and call `ConcreteClass().forOverride().
                  The application will crash with NSGenericException.
                  Such exceptions cannot be caught in Swift.
                  """)
            //ConcreteClass(param1: "Param1").forOverride(),
        },

        InteropSample(
            title: "Data classes",
            description: "Not all features of data classes are preserved, some are renamed."
        ) {
            dataClassExample()
        },
        //
        InteropSample(
            title: "Enum classes",
            description: "Doesn't work as expected. But an object with static elements was generated."
        ) {
            useEnumClass()
        },
        InteropSample(
            title: "Inner classes",
            description: "Minor differences in creation syntax."
        ) {
            createInnerClass()
        },
        InteropSample(
            title: "Open classes",
            description:
            """
            Can inherit from open class, use its protected properties, override open, but not override final methods.
            Overriding final methods will give an NSException, which will crash the app.
            """
        ) {
            openClassExample()
        },
        InteropSample(
            title: "Sealed classes",
            description: "TODO"
        ) {
            sealedClassExample()
        },

        InteropSample(
            title: "Companion object",
            description:
            """
            You can access members of Kotlin companion objects from Swift explicitly through the `companion` auxiliary object:
            ClassWithCompanionObject.companion.CONST_VAL_EXAMPLE
            """) {
            companionObjectExample()
        },
        InteropSample(
            title: "Object",
            description: "You can access Kotlin object via the `shared` auxiliary object: `MyKotlinObject.shared.myProperty`."
        ) {
            objectsExample()
        },
        InteropSample(
            title: "Fun interfaces",
            description: "You can't create an anonymous class in Swift."
        ) {
            FunInterfacesExample().example()
        },
        InteropSample(
            title: "Interfaces",
            description: "The Kotlin interface becomes Swift @protocol."
            //TODO: reword: But for some reason the val property turned into var.
        ) {
            InterfacesExample().example()
        },
        InteropSample(
            title: "Sealed Interfaces",
            description: "Separate protocols were generated that were not related to each other."
        ) {
            SealedInterfacesExample().example()
        },
    ])
}

func functionsAndPropertiesSection() -> InteropSection {
    InteropSection(title: "Functions and Properties", samples: [
        InteropSample(
            title: "Member function",
            description:
            """
            You can call public member functions from Swift.
            Internal or private declarations aren't visible.
            """
        ) {
            memberFunctionExample()
        },

        InteropSample(
            title: "Constructor",
            description: "You call constructors to create Kotlin classes from Swift.") {
            classConstructorExample()
        },

        InteropSample(
            title: "Read-only member property",
            description: "Member val property is accessible from Swift and is a read-only property in Swift"
        ) {
            memberReadonlyPropertyExample()
        },

        InteropSample(
            title: "Mutable member property",
            description: "Member var property is accessible from Swift and is a mutable property in Swift"
        ) {
            mutableMemberPropertyExample()
        },


        InteropSample(
            title: "Top-level val property",
            description: "You access a top-level property via the wrapper class: TopLevelPropertyKt.topLevelProperty.") {
            topLevelPropertyExample()

        },
        InteropSample(
            title: "Top-level mutable var property",
            description: "You access a top-level property via the wrapper class: TopLevelMutablePropertyKt.topLevelProperty."
        ) {
            topLevelPropertyMutableExample()
        },

        InteropSample(
            title: "Function expecting lamba arguments",
            description: "You can use a function expecting one or more lambdas as arguments without issues from Swift.") {
            functionWithLambaArgsExample()
        },
        InteropSample(
            title: "Function returning function type",
            description:
            """
            You can call a Kotlin function returning a lambda.
            The result has Swift function type, like `() -> String`, so you can easily call it.
            """) {
            functionReturnsLambdaExample()
        }
    ])
}

func moreAboutFunctionsSection() -> InteropSection {
    InteropSection(title: "More about Functions", samples: [
        InteropSample(title: "Functions with overloads example") {
            //There are some peculiarities when using the same parameter names.
            FunctionsWithOverloadsExample().example()
            FunctionsWithOverloadsExample2().example()
        },
        InteropSample(title: "Function with default arguments") {
            //You have to specify all the function arguments.
            FunctionWithDefaultArgumentsExample().example()
        },
        InteropSample(title: "Constructor with default arguments") {
            //You always have to specify all the arguments for a constructor.
            ConstructorWithDefaultArgumentsExample().example()
        },
        InteropSample(title: "Function expecting lambda with receiver") {
            //The extension function turns into a lambda with a parameter
            FunctionWithExtensionExample().example()
        },
        InteropSample(
            title: "Function with reciever",
            description: "Functions with receivers have been generated, it doesn’t look as convenient as we would like."
        ) {
            // TODO: reword description
            DslExample().example()
        },
        InteropSample(title: "Function with value class parameter") {
            //The function appeared in the .h file, but the value class argument was turned into primitives.
            FunctionWithValueClassParameterExample().example()
        },
        InteropSample(title: "Function with vararg parameter") {
            //varargs are not mapped to Swift's variardic parameters, but instead to KotlinArray.
            FunctionWithVarargParameterExample().example()
        },
        InteropSample(title: "Inline function") {
            //Inline functions are in the .h file, they can be called.
            InlineFunctionExample().example()
        },
    ])
}

func genericsSection() -> InteropSection {
    InteropSection(title: "Generics", samples: [
        InteropSample(title: "Generic classes") {
            //There are some features of using types.
            GenericsClassesExample().example()
        },
        InteropSample(title: "Generic functions") {
            //No automatic type inference, nullability features.
            GenericFunctionsExample().example()
        },

        InteropSample(title: "Bounded generics") {
            //The generic type restriction doesn't work.
            BoundedGenericsExample().example()
        },
        InteropSample(title: "Contravariant generics") {
            //Doesn't work as expected, you have to use a type cast.
            ContravariantGenericsExample().example()
        },
        InteropSample(title: "Covariant generics") {
            //Doesn't work as expected, you have to use a type cast.
            CovariantGenericsExample().example()
        },
        InteropSample(title: "Reified generics") {
            //NB: The reified function crashes at runtime.
            ReifiedFunctionsExample().example()
        },

        InteropSample(title: "Star projections") {
            //Doesn't work as expected, you have to use a type cast.
            StarProjectionExample().example()
        },
    ])
}

func extensionsSection() -> InteropSection {
    InteropSection(title: "Extensions", samples: [
        InteropSample(
            title: "Extension function over platform class",
            description: "A wrapper class appears with a method that accepts an object of the desired class."
        ) {
            ExtensionFunctionOverPlatformClassExample().example()
        },
        InteropSample(
            title: "Extension function over usual class",
            description: "The function can be used on a class object."
        ) {
            ExtensionFunctionOverUsualClassExample().example()
        },

        InteropSample(
            title: "Extension property over companion object of platform class",
            description: "There is a property in the .h file, but in Swift it’s impossible to use"
        ) {
            ExtensionPropertyCompanionObjectPlatformClassExample().example()
        },
        InteropSample(
            title: "Extension property over companion object of usual class",
            description: "The property can be accessed through the companion object.") {
            ExtensionPropertyCompanionObjectUsualClassExample().example()
        },

        InteropSample(
            title: "Extension property on platform class",
            description: "A wrapper class appears with a method that accepts an object of the desired class."
        ) {
            ExtensionPropertyPlatformClassExample().example()
        },
        InteropSample(
            title: "Extension property on usual class",
            description: "The property can be accessed through the class object."
        ) {
            //
            ExtensionPropertyUsualClassExample().example()
        },
    ])
}

func typesSection() -> InteropSection {
    InteropSection(title: "Types", samples: [
        InteropSample(
            title: "Collections with custom types data",
            description: "Collections with elements of custom types do not require additional mappings.") {
            CollectionsWithCustomTypesDataExample().example()
        },
        InteropSample(
            title: "Collections with primitive types",
            description: "Collections with elements of primitive types (except String) require a wrapper."
        ) {
            CollectionsWithPrimitiveTypesExample().example()
        },
        InteropSample(
            title: "Mutable, immutable collections",
            description:
            """
            To adjust mutability, the let, var keywords are used.
            Additional mappings are required for mutable collections
            """
        ) {
            let example = MutableImmutableCollectionsExample()
            example.collectionsMutabilityExample()
            example.listTypeNoCrashes()
            example.listMutableListExample()
            example.setMutableSetExample()
            example.mutableSetExample()
            example.mapMutableMapExample()
        },
        InteropSample(
            title: "Optional primitives",
            description: "Some primitive types require mapping into special optional types."
        ) {
            let example = OptionalPrimitivesExample()
            example.optionalTypesExample(optionalByte: nil, optionalShort: nil, optionalInt: nil, optionalLong: nil, optionalFloat: nil, optionalDouble: nil, optionalString: nil, optionalBoolean: nil)
            example.optionalTypesExample2(byteType: Int8(1), shortType: Int16(2), intType: 3, longType: 10_211_420_262_370_680, floatType: 5.002, doubleType: 12121.9, stringType: "asdf", booleanType: false)
            example.optionalTypesExample3()
        },
        InteropSample(
            title: "Primitive types",
            description: "May require mapping for integer data types and mapping for Char."
        ) {
            let example = PrimitiveTypesExample()
            example.boolTypeExample(boolType: false)
            example.charTypeExample(unicharType: 64, stringType: "123")
            example.integerTypesExample(byteType: Int8(1), shortType: Int16(2), intType: 3, longType: 10_211_420_262_370_680)
            example.realTypesExample(floatType: 31.5, doubleType: 12121.9)
            example.stringTypeExample(stringType: "def")
            example.swiftIntTypeExample(swiftIntType: 42)
        },
        InteropSample(
            title: "Unit and Nothing",
            description:
            """
            The Unit and Nothing types can be used in the same way as in Kotlin:
            Unit as an object or void, Nothing cannot be created.
            NB: some lines in the examples are commented out as they (correctly) do not compile / crash the app.
            Uncomment at own risk (TODO: reword)
            """
        ) {
            UnitNothingExample().example()
        },
    ])
}

func coroutinesSection() -> InteropSection {
    InteropSection(title: "Coroutines", samples: [
        InteropSample(
            title: "Suspend functions",
            description:
            """
            Suspend functions are translated into callbacks, experimentally - into async / await.
            Libraries like SKIE and KMP-NativeCoroutines can be used to improve the interop.
            """) {
            suspendFunctionExample()
        },
        InteropSample(
            title: "Flows",
            description:
            """
            Translated into callback, experimentally - into async / await. Generic type arguments are lost.
            Libraries like SKIE and KMP-NativeCoroutines can be used to improve the interop and provide cancellation support.
            """
        ) {
            flowExample()
        },
        InteropSample(
            title: "Suspend functions with kmp-nativecoroutines",
            description: "TODO"
        ) {
            suspendFunctionKMPNativeCoroutinesExample()
        },
        InteropSample(
            title: "Flows with kmp-nativecoroutines",
            description: "TODO"
        ) {
            flowKMPNativeCoroutinesExample()
        }
    ])
}
