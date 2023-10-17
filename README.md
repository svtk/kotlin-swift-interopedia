# Kotlin-Swift interopedia

## Common
<table>
  <tr><td><a href="/docs/common/InternalModifier.md">Internal modifier</a></td><td>Internal functions and classes are not visible in Swift.</td></tr>
  <tr><td><a href="/docs/common/JavaDocComments.md">JavaDoc comments</a></td><td>Some KDoc comments are visible if you add a special compiler argument.</td></tr>
  <tr><td><a href="/docs/common/Exceptions%20and%20Errors.md">Exceptions and errors</a></td><td>Exceptions declared with `@Throws` is represented with `NSError` and must be handled. Exceptions not declared will cause a program termination.</td></tr>
</table>

## Data types
<table>
  <tr><td><a href="/docs/types/Collections%20with%20custom%20types%20data.md">Collections with custom types data</a></td><td>Collections with elements of custom types do not require additional mappings.</td></tr>
  <tr><td><a href="/docs/types/Collections%20with%20primitive%20types.md">Collections with primitive types</a></td><td>Collections with elements of primitive types (except String) require a wrapper.</td></tr>
  <tr><td><a href="/docs/types/Primitive%20types.md">Primitive types</a></td><td>May require mapping for integer data types and mapping for Char.</td></tr>
  <tr><td><a href="/docs/types/Optional%20(nullable)%20primitive%20types.md">Optional (nullable) primitive types</a></td><td>Some primitive types require mapping into special optional types.</td></tr>
  <tr><td><a href="/docs/types/Mutable,%20immutable%20collections.md">Mutable, immutable collections</a></td><td>To adjust mutability, the let and var keywords are used. Additional mappings are required for mutable collections.</td></tr>
  <tr><td><a href="/docs/types/Unit%20and%20Nothing.md">Unit and Nothing</a></td><td>The Unit and Nothing types can be used in the same way as in Kotlin: Unit as an object or void, Nothing cannot be created.</td></tr>
</table>

## Usual workflow
<table>
  <tr><td><a href="/docs/usual-workflow/Companion%20object.md">Companion object</a></td><td>Access to functions and properties is available through the companion auxiliary object.</td></tr>
  <tr><td><a href="/docs/usual-workflow/Constructor%20with%20default%20arguments.md">Constructor with default arguments</a></td><td>You always have to specify all the arguments for a constructor. Improved interop available with SKIE.</td></tr>
  <tr><td><a href="/docs/usual-workflow/Extension%20function%20over%20platform%20class.md">Extension function over platform class</a></td><td>A wrapper class appears with a method that accepts an object of the desired class.</td></tr>
  <tr><td><a href="/docs/usual-workflow/Extension%20properties%20for%20companion%20object%20of%20platform%20class.md">Extension properties for companion object of platform class</a></td><td>There is a property in the .h file, but in Swift it’s impossible to use.</td></tr>
  <tr><td><a href="/docs/usual-workflow/Extension%20properties%20for%20companion%20object%20of%20usual%20class.md">Extension properties for companion object of usual class</a></td><td>The property can be accessed through the companion object.</td>
  <tr><td><a href="/docs/usual-workflow/Extension%20properties%20over%20platform%20class.md">Extension properties over platform class</a></td><td>A wrapper class appears with a function that accepts an object of the desired class.</td>
  <tr><td><a href="/docs/usual-workflow/Extension%20properties%20over%20usual%20class.md">Extension properties over usual class</a></td><td>The property can be accessed through the class object.</td>
  <tr><td><a href="/docs/usual-workflow/Function%20with%20default%20arguments.md">Function with default arguments</a></td><td>You always have to specify all the function arguments. Improved interop available with SKIE.</td>
  <tr><td><a href="/docs/usual-workflow/Objects.md">Objects</a></td><td>Access is available through the shared auxiliary object.</td>
  <tr><td><a href="/docs/usual-workflow/Top-level%20functions.md">Top-level functions</a></td><td>A wrapper class appears: TopLevelFunctionKt.topLevelFunction().</td></tr>
  <tr><td><a href="/docs/usual-workflow/Top-level%20val%20properties%20(readonly).md">Top-level val properties (readonly)</a></td><td>A wrapper class for accessing the property appears: TopLevelPropertyKt.topLevelProperty.</td></tr>
  <tr><td><a href="/docs/usual-workflow/Top-level%20var%20properties%20(mutable).md">Top-level var properties (mutable)</a></td><td>A wrapper class for accessing the property appears: TopLevelPropertyMutableKt.topLevelPropertyMutable.</td></tr>
  <tr><td><a href="/docs/usual-workflow/Usual%20class%20constructor.md">Usual class constructor</a></td><td>Works the same as Kotlin.</td></tr>
  <tr><td><a href="/docs/usual-workflow/Usual%20class%20functions.md">Usual class function</a></td><td>Works the same as Kotlin.</td></tr>
  <tr><td><a href="/docs/usual-workflow/Usual%20class%20val%20property%20(readonly).md">Usual class val property (readonly)</a></td><td>The property is accessible from the class object and is a readonly property.</td></tr>
  <tr><td><a href="/docs/usual-workflow/Usual%20class%20var%20property%20(mutable).md">Usual class var property (mutable)</a></td><td>The property is accessible from the class object and is a mutable property.</td></tr>
</table>

## Classes
<table>
  <tr><td><a href="/docs/classes/Abstract%20class.md">Abstract class</a></td><td>IDE has no hints to override abstract methods, rather we get a crash when trying to use the method during runtime.</td></tr>
  <tr><td><a href="/docs/classes/Annotation%20class.md">Annotation class</a></td><td>Annotations were not included in the .h file.</td></tr>
  <tr><td><a href="/docs/classes/Data%20class.md">Data class</a></td><td>Not all features of data classes are preserved, some are renamed. Improved interop available with SKIE.</td></tr>
  <tr><td><a href="/docs/classes/Enum%20class.md">Enum class</a></td><td>Doesn't work as expected. But an object with static elements was generated. Improved interop available with SKIE.</td></tr>
  <tr><td><a href="/docs/classes/Inner%20class.md">Inner class</a></td><td>Minor differences in creation syntax.</td></tr>
  <tr><td><a href="/docs/classes/Open%20class.md">Open class</a></td><td>Can inherit from open class, use its protected properties, override open, but not override final methods.</td></tr>
  <tr><td><a href="/docs/classes/Sealed%20class.md">Sealed class</a></td><td>A class with heirs is generated. Passing to a switch statement requires a default case. Improved interop available with SKIE.</td></tr>
  <tr><td><a href="/docs/classes/InlineClass.md">Inline class</a></td><td>The class was not included in the .h file and cannot be used.</td></tr>
</table>

## Interfaces
<table>
  <tr><td><a href="/docs/interfaces/Fun%20interface.md">Fun interface</a></td><td>You can't create an anonymous class in Swift.</td></tr>
  <tr><td><a href="/docs/interfaces/Interface.md">Interface</a></td><td>The interface has become @protocol. But for some reason the val property turned into var.</td></tr>
  <tr><td><a href="/docs/interfaces/Sealed%20interface.md">Sealed interface</a></td><td>Separate protocols were generated that were not related to each other.</td></tr>
</table>

## Functions
<table>
  <tr><td><a href="/docs/functions/DSL.md">DSL</a></td><td>Functions with receivers have been generated, it doesn’t look as convenient as we would like.</td></tr>
  <tr><td><a href="/docs/functions/Function%20returns%20lambda.md">Function returns lambda</a></td><td>The function that returned the lambda works without crashes; lambda can be called.</td></tr>
  <tr><td><a href="/docs/functions/Function%20returns%20primitive%20type.md">Function returns primitive type</a></td><td>A function returning a primitive type works without error.</td></tr>
  <tr><td><a href="/docs/functions/Function%20with%20extension%20function%20as%20args.md">Function with extension function as args</a></td><td>The extension function turns into a lambda with a parameter.</td></tr>
  <tr><td><a href="/docs/functions/Function%20with%20lambda%20arguments.md">Function with lambda arguments</a></td><td>A function that takes one or more lambdas as arguments converts normally in Swift.</td></tr>
  <tr><td><a href="/docs/functions/Function%20with%20no%20return%20type.md">Function with no return type</a></td><td>Functions that return nothing can be safely called.</td></tr>
  <tr><td><a href="/docs/functions/Function%20with%20value%20class%20parameter.md">Function with value class parameter</a></td><td>The function appeared in the .h file, but the value class argument was turned into primitives.</td></tr>
  <tr><td><a href="/docs/functions/Function%20with%20vararg%20parameter.md">Function with vararg parameter</a></td><td>varargs are not mapped to Swift's variardic parameters, but instead to KotlinArray.</td></tr>
  <tr><td><a href="/docs/functions/Functions%20with%20overloads.md">Functions with overloads</a></td><td>There are some peculiarities when using the same parameter names.</td></tr>
  <tr><td><a href="/docs/functions/Inline%20functions.md">Inline functions</a></td><td>Inline functions are in the .h file, they can be called.</td></tr>
</table>

## Generics
<table>
  <tr><td><a href="/docs/generics/Bounded%20generics.md">Bounded generics</a></td><td>The generic type restriction doesn't work.</td></tr>
  <tr><td><a href="/docs/generics/Contravariant%20generics.md">Contravariant generics</a></td><td>Doesn't work as expected, you have to use a type cast.</td></tr>
  <tr><td><a href="/docs/generics/Covariant%20generics.md">Covariant generics</a></td><td>Doesn't work as expected, you have to use a type cast.</td></tr>
  <tr><td><a href="/docs/generics/Generic%20classes.md">Generic classes</a></td><td>There are some features of using types.</td></tr>
  <tr><td><a href="/docs/generics/Generic%20functions.md">Generic functions</a></td><td>No automatic type inference, nullability features.</td></tr>
  <tr><td><a href="/docs/generics/Generic%20interfaces.md">Generic interfaces</a></td><td>Generic interfaces are not supported.</td></tr>
  <tr><td><a href="/docs/generics/Reified%20functions.md">Reified functions</a></td><td>The reified function crashes at runtime.</td></tr>
  <tr><td><a href="/docs/generics/Star%20projection.md">Star projection</a></td><td>Doesn't work as expected, you have to use a type cast.</td></tr>
</table>

## Coroutines
<table>
  <tr><td><a href="/docs/coroutines/Suspend%20functions.md">Suspend functions</a></td><td>Translated into callback, experimentally - into async / await. Libraries like SKIE and KMP-NativeCoroutines can be used to improve the interop and provide cancellation support.</td></tr>
  <tr><td><a href="/docs/coroutines/Flows.md">Flows</a></td><td>Translated into callback, experimentally - into async / await. Generic type arguments are lost. Libraries like SKIE and KMP-NativeCoroutines can be used to improve the interop and provide cancellation support.</td></tr>
</table>
