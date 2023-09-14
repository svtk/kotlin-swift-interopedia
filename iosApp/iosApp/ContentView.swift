import SwiftUI
import shared

struct ContentView: View {
	var body: some View {
        VStack {
            Text("Swift Interop Playground")
            Button("Go", action: {
                //Classes
                
//                ConcreteClass(param1: "Param1").forOverride()
//                DataClassExample().copy()
//                DataClassExample().equals()
//                DataClassExample().toString()
//                EnumClassExample().useEnumClass()
//                InnerClassExample().createInnerClass()
//                OpenClassExample.example()
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
                FunctionWithExtensionExample().example()
            })
        }
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
