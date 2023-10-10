import Foundation
import shared

// Problem statement
//func testDefaultArguments(){
//    let defaultArguments = DefaultArguments()
//    defaultArguments.functionWithDefaultArgument()
//}

func testDefaultArgumentsWithHardcodedDefaults(){
    let defaultArguments = DefaultArguments(arg1: 1)
    defaultArguments.functionWithDefaultArgument(arg2: 2)
}

// Possible solution 2
func testDefaultArgumentsWithBridge(){
    let defaultArguments = DefaultArgumentsBridgeKt.createDefaultArguments()
    DefaultArgumentsBridgeKt.functionWithDefaultArgument(defaultArguments: defaultArguments)
}
