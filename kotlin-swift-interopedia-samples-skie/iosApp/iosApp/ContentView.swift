import SwiftUI
import shared

struct ContentView: View {
	var body: some View {
        VStack {
            Text("Swift Interop Playground")
            Button("Go", action: {
                testClasses()
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

        SealedClassExample().example(s: SealedClass.Object())
        SealedClassExample().example(s: SealedClass.Simple(param1: "param1"))
        SealedClassExample().example(s: SealedClass.Data(param1: "param1", param2: true))
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
