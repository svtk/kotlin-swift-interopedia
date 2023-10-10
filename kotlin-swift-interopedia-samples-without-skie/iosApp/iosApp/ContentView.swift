import SwiftUI
import shared

struct ContentView: View {
	var body: some View {
        VStack {
            Text("Swift Interop Playground")
            Button("Go", action: {

                //testCommon()
                
                testClasses()

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
        SealedClassExample().example(s: SealedClass.Object())
        SealedClassExample().example(s: SealedClass.Simple(param1: "param1"))
        SealedClassExample().example(s: SealedClass.Data(param1: "param1", param2: true))
        SealedClassExample().switchUsage(sealedClass: SealedClass.Object())
        SealedClassExample().switchUsage(sealedClass: SealedClass.Simple(param1: "param1"))
        SealedClassExample().switchUsage(sealedClass: SealedClass.Data(param1: "param1", param2: true))
    }

}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
