import SwiftUI
import shared

struct ContentView: View {
	var body: some View {
        VStack {
            Text("Swift Interop Playground")
            Button("Go", action: {
                //testClasses()
                
                //testFunctions()
                
                //testUsualWorkflow()
            })
        }
	}

	func testClasses(){
        //Data classes
        //If default argument interop is enabled, it's not necessary to specify all arguments.
        //DataClassExample().copy()
        
        //Enum classes
        //SKIE creates real Swift enums, and automatically converts them from Kotlin enums. Enums are exhaustive.
        //EnumClassExample().useEnumClass()

        //SealedClassExample().example(s: SealedClass.Object())
        //SealedClassExample().example(s: SealedClass.Simple(param1: "param1"))
        //SealedClassExample().example(s: SealedClass.Data(param1: "param1", param2: true))
	}
    
    @MainActor func testFunctions(){
        //Suspend functions
        //Translated into callback, experimentally - into async / await. Libraries like SKIE and KMP-NativeCoroutines can be used to improve the interop.
        //SuspendFunctionExample().example()
    }
    
    func testUsualWorkflow(){
        //Constructor with default arguments
        //If default argument interop is enabled, it's notnecessary to specify all arguments.
        //ConstructorWithDefaultArgumentsExample().example()
        
        //Function with default arguments
        //If annotated, it's not necessary to specify all the arguments.
        //FunctionWithDefaultArgumentsExample().example()
    }
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
