# Kotlin-Swift interopedia

We created this repository to help developers interested in KMM technology understand what the public module API they describe would look like.

The network has [detailed documentation from JetBrains](https://kotlinlang.org/docs/native-objc-interop.html)
about the interop between Kotlin and Swift, but it does not cover in detail all the features of the Kotlin language.

Therefore, we have summarized the list of Kotlin features into a single table and noted which features can be used without any problems, and which ones will require certain improvements.

## Common
<ul>
  <li><a href="/docs/common/InternalModifier.md">Internal modifier</a></li>
  <li><a href="/docs/common/JavaDocComments.md">JavaDoc comments</a></li>
</ul>

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
  <li><a href="/docs/usual-workflow/Function%20with%20default%20arguments.md">Function with default arguments</a></li>
  <li><a href="/docs/usual-workflow/Constructor%20with%20default%20arguments.md">Constructor with default arguments</a></li>
</ul>

## Classes
<ul>
  <li><a href="/docs/classes/Abstract%20class.md">Abstract class</a></li>
  <li><a href="/docs/classes/Annotation%20class.md">Annotation class</a></li>
  <li><a href="/docs/classes/Data%20class.md">Data class</a></li>
  <li><a href="/docs/classes/Enum%20class.md">Enum class</a></li>
  <li><a href="/docs/classes/Inner%20class.md">Inner class</a></li>
  <li><a href="/docs/classes/Open%20class.md">Open class</a></li>
  <li><a href="/docs/classes/Sealed%20class.md">Sealed class</a></li>
  <li><a href="/docs/classes/Value%20class.md">Value class</a></li>
</ul>

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