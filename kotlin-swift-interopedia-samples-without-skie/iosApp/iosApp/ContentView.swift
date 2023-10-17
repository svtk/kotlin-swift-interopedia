import SwiftUI
import shared

struct ContentView: View {
	var body: some View {
        VStack {
            Text("Swift Interop Playground")
            Button("Go", action: {

                //testCommon()
                
                //testClasses()
                
                //testFunctions()
                
                //testGenerics()
                
                //testUsualWorkflow()
                
                //testInterfaces()
                
                //testTypes()
                
                //testCoroutines()
            })
        }
	}

    func testCommon(){
        //JavaDoc Comments

        //Note: This behaviour is only observable at development time using Option+Double left click to see the docs.
        //TDLR: Classes and functions are supported, properties on constructors (@property) are not.
        //testJavaDocCommentsExample()
    }

    func testClasses() {
        //Abstract classes
        //Note: When trying to use this method, the application will
        //crash with NSGenericException. Exceptions cannot be caught in
        //Swift
        //ConcreteClass(param1: "Param1").forOverride()

        //Data classes
        //Not all features of data classes are preserved, some are renamed.
        //DataClassExample().copy()
        //DataClassExample().equals()
        //DataClassExample().toString()

        //Enum classes
        //Doesn't work as expected. But an object with static elements was generated.
        //EnumClassExample().useEnumClass()

        //Inner classes
        //Minor differences in creation syntax.
        //InnerClassExample().createInnerClass()

        //Open classes
        //Can inherit from open class, use its protected properties, override open, but not override final methods.
        //Overriding final methods will give an NSException, which will crash the app
        //OpenClassExample.example()

        //Sealed classes
        //SealedClassExample().example(s: SealedClass.Object())
        //SealedClassExample().example(s: SealedClass.Simple(param1: "param1"))
        //SealedClassExample().example(s: SealedClass.Data(param1: "param1", param2: true))
        //SealedClassExample().switchUsage(sealedClass: SealedClass.Object())
        //SealedClassExample().switchUsage(sealedClass: SealedClass.Simple(param1: "param1"))
        //SealedClassExample().switchUsage(sealedClass: SealedClass.Data(param1: "param1", param2: true))
    }
    
    func testFunctions(){
        //DSL
        //Functions with receivers have been generated, it doesn’t look as convenient as we would like.
        //DslExample().example()
        
        //Function returns lamba
        //The function that returned the lambda works without crashes; lambda can be called.
        //FunctionReturnsLambdaExample().example()
        
        //Function returns primitive
        //A function returning a primitive type works without error.
        //FunctionReturnsPrimitiveExample().example()
        
        //Function with extension function as args
        //The extension function turns into a lambda with a parameter
        //FunctionWithExtensionExample().example()
        
        //Function with lamba arguments
        //A function that takes one or more lambdas as arguments converts normally in Swift.
        //FunctionWithLambaArgsExample().example()
        
        //Function with no return type
        //Functions that return nothing can be safely called.
        //FunctionWithNoReturnTypeExample().example()
        
        //Function with value class parameter
        //The function appeared in the .h file, but the value class argument was turned into primitives.
        //FunctionWithValueClassParameterExample().example()
        
        //Function with vararg parameter
        //varargs are not mapped to Swift's variardic parameters, but instead to KotlinArray.
        //FunctionWithVarargParameterExample().example()
        
        //Functions with overloads example
        //There are some peculiarities when using the same parameter names.
        //FunctionsWithOverloadsExample().example()
        //FunctionsWithOverloadsExample2().example()
        
        //Inline function
        //Inline functions are in the .h file, they can be called.
        //InlineFunctionExample().example()
        
    }
    
    func testGenerics(){
        //Bounded generics
        //The generic type restriction doesn't work.
        //BoundedGenericsExample().example()
        
        //Contravariant generics
        //Doesn't work as expected, you have to use a type cast.
        //ContravariantGenericsExample().example()
        
        //Covariant generics
        //Doesn't work as expected, you have to use a type cast.
        //CovariantGenericsExample().example()
        
        //Generic classes
        //There are some features of using types.
        //GenericsClassesExample().example()
        
        //Generic functions
        //No automatic type inference, nullability features.
        //GenericFunctionsExample().example()
        
        //Reified functions
        //NB: The reified function crashes at runtime.
        //ReifiedFunctionsExample().example()
        
        //Star projections
        //Doesn't work as expected, you have to use a type cast.
        //StarProjectionExample().example()
    }
    
    func testUsualWorkflow(){
        //Companion object
        //Access to functions and properties is available through the companion auxiliary object.
        //CompanionObjectExample().example()
        
        //Constructor with default arguments
        //You always have to specify all the arguments for a constructor.
        //ConstructorWithDefaultArgumentsExample().example()
        
        //Extension function over platform class
        //A wrapper class appears with a method that accepts an object of the desired class.
        //ExtensionFunctionOverPlatformClassExample().example()
        
        //Extension function over usual class
        //The function can be used on a class object.
        //ExtensionFunctionOverUsualClassExample().example()
        
        //Extension property over companion object of platform class
        //There is a property in the .h file, but in Swift it’s impossible to use
        //ExtensionPropertyCompanionObjectPlatformClassExample().example()
        
        //Extension property over companion object of usual class
        //The property can be accessed through the companion object.
        //ExtensionPropertyCompanionObjectUsualClassExample().example()
        
        //Extension property on platform class
        //A wrapper class appears with a method that accepts an object of the desired class.
        //ExtensionPropertyPlatformClassExample().example()
        
        //Extension property on usual class
        //The property can be accessed through the class object.
        //ExtensionPropertyUsualClassExample().example()
        
        //Function with default arguments
        //You have to specify all the function arguments.
        //FunctionWithDefaultArgumentsExample().example()
        
        //Objects
        //Access is available through the shared auxiliary object.
        //ObjectsExample().example()
        
        //Top level function
        //A wrapper class appears: TopLevelFunctionKt.topLevelFunction().
        //TopLevelFunctionExample().example()
        
        //Top level property (read-only)
        //A wrapper class for accessing the property appears: TopLevelPropertyKt.topLevelProperty.
        //TopLevelPropertyExample().example()
        
        //Top level property (mutable)
        //A wrapper class for accessing the property appears: TopLevelPropertyMutableKt.topLevelProperty.
        //TopLevelPropertyMutableExample().example()
        
        //Usual class constructor
        //Works the same as Kotlin.
        //UsualClassConstructorExample().example()
        
        //Usual class function
        //Works the same as Kotlin
        //UsualClassFunctionExample().example()
        
        //Usual class val property (readonly)
        //The property is accessible from the class object and is a readonly property
        //UsualClassValPropertyExample().example()
        
        //Usual class var property (mutable)
        //The property is accessible from the class object and is a mutable property
        //UsualClassPropertyMutableExample().example()
    }
    
    func testInterfaces(){
        //Fun interfaces
        //You can't create an anonymous class in Swift.
        //FunInterfacesExample().example()
        
        //Interfaces
        //The interface has become @protocol. But for some reason the val property turned into var.
        //InterfacesExample().example()
        
        //Sealed interfaes
        //Separate protocols were generated that were not related to each other.
        //SealedInterfacesExample().example()
    }
    
    func testTypes(){
        //Collections with custom types data
        //Collections with elements of custom types do not require additional mappings.
        //CollectionsWithCustomTypesDataExample().example()
        
        //Collections with primitive types
        //Collections with elements of primitive types (except String) require a wrapper.
        //CollectionsWithPrimitiveTypesExample().example()
        
        //Mutable, immutable collections
        //To adjust mutability, the let, var keywords are used. Additional mappings are required for mutable collections
        //let example = MutableImmutableCollectionsExample()
        //example.collectionsMutabilityExample()
        //example.listTypeNoCrashes()
        //example.listMutableListExample()
        //example.setMutableSetExample()
        //example.mutableSetExample()
        //example.mapMutableMapExample()
        
        //Optional primitives
        //Some primitive types require mapping into special optional types.
        //let example = OptionalPrimitivesExample()
        //example.optionalTypesExample(optionalByte: nil, optionalShort: nil, optionalInt: nil, optionalLong: nil, optionalFloat: nil, optionalDouble: nil, optionalString: nil, optionalBoolean: nil)
        //example.optionalTypesExample2(byteType: Int8(1), shortType: Int16(2), intType: 3, longType: 10_211_420_262_370_680, floatType: 5.002, doubleType: 12121.9, stringType: "asdf", booleanType: false)
        //example.optionalTypesExample3()
        
        //Primitive types
        //May require mapping for integer data types and mapping for Char.
        //let example = PrimitiveTypesExample()
        //example.boolTypeExample(boolType: false)
        //example.charTypeExample(unicharType: 64, stringType: "123")
        //example.integerTypesExample(byteType: Int8(1), shortType: Int16(2), intType: 3, longType: 10_211_420_262_370_680)
        //example.realTypesExample(floatType: 31.5, doubleType: 12121.9)
        //example.stringTypeExample(stringType: "def")
        //example.swiftIntTypeExample(swiftIntType: 42)
        
        //Unit and Nothing
        //The Unit and Nothing types can be used in the same way as in Kotlin: Unit as an object or void, Nothing cannot be created.
        //NB: some lines in the examples are commented out as they (correctly) do not compile / crash the app. Uncomment at own risk
        //UnitNothingExample().example()
    }
    
    @MainActor func testCoroutines(){
        //Suspend function
        //Translated into callback, experimentally - into async / await. Libraries like SKIE and KMP-NativeCoroutines can be used to improve the interop.
        //SuspendFunctionExample().example() //(Needs to be uncommented in file, @NativeCoroutines annotation removed)
        //SuspendFunctionKMPNativeCoroutinesExample().example()
        
        //Flows
        //Translated into callback, experimentally - into async / await. Generic type arguments are lost. Libraries like SKIE and KMP-NativeCoroutines can be used to improve the interop and provide cancellation support.
        //FlowExample().example() //(Needs to be uncommented in file, @NativeCoroutines annotation removed)
        //FlowKMPNativeCoroutinesExample().example()
    }
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
