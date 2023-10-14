import Foundation
import shared

class SealedInterfacesExample {
    func example(){
        switchOnSealedInterfaces(sealedInterfaces: SealedInterfacesFirstImpl())
        switchOnSealedInterfaces(sealedInterfaces: SealedInterfacesSecondImpl())
    }
    
    func switchOnSealedInterfaces(sealedInterfaces: SealedInterfaces){
        switch(sealedInterfaces){
        case is SealedInterfacesFirst: print((sealedInterfaces as! any SealedInterfacesFirst as SealedInterfacesFirst).firstFunctionExample())
        case is SealedInterfacesSecond: print((sealedInterfaces as! any SealedInterfacesSecond as SealedInterfacesSecond).secondFunctionExample())
        default: print("default")
        }
    }
}

class SealedInterfacesFirstImpl : SealedInterfacesFirst {
    func firstFunctionExample() -> String {
        return "first"
    }
}

class SealedInterfacesSecondImpl : SealedInterfacesSecond {
    func secondFunctionExample() -> String {
        return "second"
    }
}
