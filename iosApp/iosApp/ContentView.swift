import SwiftUI
import shared

struct ContentView: View {
	var body: some View {
        VStack {
            Text("Swift Interop Playground")
            Button("Go", action: {
                //Classes

                //Abstract classes
                //When trying to use this method, the application will crash with NSGenericException.
                //Exceptions cannot be caught in Swift
                //ConcreteClass(param1: "Param1").forOverride()

               //Data classes
               //Not all features of data classes are preserved, some are renamed.
               //DataClassExample().copy()
               //DataClassExample().equals()
               //DataClassExample().toString()

               //Enum classes
               //Doesn't work as expected. But an object with static elements was generated. Improved interop available with SKIE.
               //EnumClassExample().useEnumClass()

               //Inner classes
               //Minor differences in creation syntax.
               //InnerClassExample().createInnerClass()

               //Open classes
               //Can inherit from open class, use its protected properties, override open, but not override final methods.
               OpenClassExample.example()




//                SealedClassExample().example(s: SealedClass.Object())
//                SealedClassExample().example(s: SealedClass.Simple(param1: "param1"))
//                SealedClassExample().example(s: SealedClass.Data(param1: "param1", param2: true))
//                SealedClassExample().switchUsage(sealedClass: SealedClass.Object())
//                SealedClassExample().switchUsage(sealedClass: SealedClass.Simple(param1: "param1"))
//                SealedClassExample().switchUsage(sealedClass: SealedClass.Data(param1: "param1", param2: true))
         
            //Functions
//            DslExample().example()
//                FunctionReturnsLambdaExample().example()
//                FunctionReturnsPrimitiveExample().example()
                //FunctionWithExtensionExample().example()
            })
        }
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
