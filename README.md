# Kotlin-Swift interopedia

## Common
<table>
  <tr><td><a href="/docs/common/InternalModifier.md">Internal modifier</a></td><td>Internal functions and classes are not visible in Swift</td></tr>
  <tr><td><a href="/docs/common/JavaDocComments.md">JavaDoc comments</a></td><td>Some KDoc comments are visible if you add a special compiler argument</td></tr>
</table>

## Data types
<ul>
  <li><a href="/docs/common/Primitive%20types.md">Primitive types</a></li>
  <li><a href="/docs/types/Optional%20(nullable)%20primitive%20types.md">Optional (nullable) primitive types</a></li>
  <li><a href="/docs/types/Mutable,%20immutable%20collections.md">Mutable, immutable collections</a></li>
  <li><a href="/docs/types/Collections%20with%20primitive%20types.md">Collections with primitive types</a></li>
  <li><a href="/docs/types/Collections%20with%20custom%20types%20data.md">Collections with custom types data</a></li>
  <li><a href="/docs/types/Unit%20and%20Nothing.md">Unit and Nothing</a></li>
</ul>

## Usual workflow
<ul>
  <li><a href="/docs/usual-workflow/Top-level%20functions.md">Top-level functions</a></li>
  <li><a href="/docs/usual-workflow/Top-level%20val%20properties%20(readonly).md">Top-level val properties (readonly)</a></li>
  <li><a href="/docs/usual-workflow/Top-level%20var%20properties%20(mutable).md">Top-level var properties (mutable)</a></li>
  <li><a href="/docs/usual-workflow/Extension%20function%20over%20platform%20class.md">Extension function over platform class</a></li>
  <li><a href="/docs/usual-workflow/Extension%20properties%20over%20platform%20class.md">Extension properties over platform class</a></li>
  <li><a href="/docs/usual-workflow/Extension%20properties%20for%20companion%20object%20of%20platform%20class.md">Extension properties for companion object of platform class</a></li>
  <li><a href="/docs/usual-workflow/Extension%20functions%20over%20usual%20class.md">Extension functions over usual class</a></li>
  <li><a href="/docs/usual-workflow/Extension%20properties%20over%20usual%20class.md">Extension properties over usual class</a><</li>
  <li><a href="/docs/usual-workflow/Extension%20properties%20for%20companion%20object%20of%20usual%20class.md">Extension properties for companion object of usual class</a></li>
  <li><a href="/docs/usual-workflow/Usual%20class%20constructor.md">Usual class constructor</a></li>
  <li><a href="/docs/usual-workflow/Usual%20class%20val%20property%20(readonly).md">Usual class val property (readonly)</a></li>
  <li><a href="/docs/usual-workflow/Usual%20class%20var property%20(mutable).md">Usual class var property (mutable)</a></li>
  <li><a href="/docs/usual-workflow/Usual%20class%20functions.md">Usual class functions</a></li>
  <li><a href="/docs/usual-workflow/Companion%20object.md">Companion object</a></li>
  <li><a href="/docs/usual-workflow/Objects.md">Objects</a></li>
  <li><a href="/docs/usual-workflow/DefaultArguments.md">Function with default arguments</a></li>
  <li><a href="/docs/usual-workflow/DefaultArguments.md">Constructor with default arguments</a></li>
</ul>

## Classes
<table>
  <tr><td><a href="/docs/classes/Abstract%20class.md">Abstract class</a></td><td>IDE has no hints to override abstract methods, rather we get a crash when trying to use the method during runtime.</td></tr>
  <tr><td><a href="/docs/classes/Annotation%20class.md">Annotation class</a></td><td>Annotations were not included in the .h file.</td></tr>
  <tr><td><a href="/docs/classes/Data%20class.md">Data class</a></td><td>Not all features of data classes are preserved, some are renamed. Improved interop available with SKIE.</td></tr>
  <tr><td><a href="/docs/classes/Enum%20class.md">Enum class</a></td><td>Doesn't work as expected. But an object with static elements was generated. Improved interop available with SKIE.</td></tr>
  <tr><td><a href="/docs/classes/Inner%20class.md">Inner class</a></td><td>Minor differences in creation syntax.</td></tr>
  <tr><td><a href="/docs/classes/Open%20class.md">Open class</a></td><td>Can inherit from open class, use its protected properties, override open, but not override final methods.</td></tr>
  <tr><td><a href="/docs/classes/Sealed%20class.md">Sealed class</a></td><td>A class with heirs is generated. Passing to a switch statement requires a default case. Improved interop available with SKIE.</td></tr>
  <tr><td><a href="/docs/classes/InlineClass.md">Value class</a></td><td>The class was not included in the .h file and cannot be used.</td></tr>
</table>

## Interfaces
<ul>
  <li><a href="/docs/interfaces/Interface.md">Interface</a></li>
  <li><a href="/docs/interfaces/Sealed%20interface.md">Sealed interface</a></li>
  <li><a href="/docs/interfaces/Fun%20interface.md">Fun interface</a></li>
</ul>

## Functions
<ul>
  <li><a href="/docs/functions/DSL.md">DSL</a></li>
  <li><a href="/docs/functions/Function%20returns%20lambda.md">Function returns lambda</a></li>
  <li><a href="/docs/functions/Function%20returns%20primitive%20type.md">Function returns primitive type</a></li>
  <li><a href="/docs/functions/Function%20with%20extension%20function%20as%20args.md">Function with extension function as args</a></li>
  <li><a href="/docs/functions/Function%20with%20lambda%20arguments.md">Function with lambda arguments</a></li>
  <li><a href="/docs/functions/Function%20with%20no%20return%20type.md">Function with no return type</a></li>
  <li><a href="/docs/functions/Function%20with%20value%20class%20parameter.md">Function with value class parameter</a></li>
  <li><a href="/docs/functions/Function%20with%20vararg%20parameter.md">Function with vararg parameter</a></li>
  <li><a href="/docs/functions/Functions%20with%20overloads.md">Functions with overloads</a></li>
  <li><a href="/docs/functions/Inline%20functions.md">Inline functions</a></li>
  <li><a href="/docs/functions/Suspend%20functions.md">Suspend functions</a></li>
</ul>

## Generics
<ul>
  <li><a href="/docs/generics/Generic%20classes.md">Generic classes</a></li>
  <li><a href="/docs/generics/Generic%20functions.md">Generic functions</a></li>
  <li><a href="/docs/generics/Generic%20interfaces.md">Generic interfaces</a></li>
  <li><a href="/docs/generics/Bounded%20generics.md">Bounded generics</a></li>
  <li><a href="/docs/generics/Contravariant%20generics.md">Contravariant generics</a></li>
  <li><a href="/docs/generics/Covariant%20generics.md">Covariant generics</a></li>
  <li><a href="/docs/generics/Star%20projection.md">Star projection</a></li>
  <li><a href="/docs/generics/Reified%20functions.md">Reified functions</a></li>
</ul>