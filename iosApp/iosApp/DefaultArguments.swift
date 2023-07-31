import Foundation
import shared

// Problem statement
//func testDefaultArguments(){
//    let defaultArguments = DefaultArguments()
//    defaultArguments.callFunctionWithDefaultArgument()
//}

func testDefaultArgumentsWithHardcodedDefaults(){
    let defaultArguments = DefaultArguments(arg1: 1)
    defaultArguments.callFunctionWithDefaultArgument(arg2: 2)
}

// Possible solution 2
func testDefaultArgumentsWithBridge(){
    let bridge = DefaultArgumentsBridge()
    let defaultArguments = bridge.createDefaultArguments()
    bridge.callDefaultArguments(defaultArguments: defaultArguments)
}
