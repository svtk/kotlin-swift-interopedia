import Foundation
import shared

class DataClassExample {
    
    let data = DataClass(param1: "abc", param2: 123, param3: true)
    
    func copy(){
        let data2 = data.doCopy(param1: "def", param2: 456, param3: false)
    }
    
    func equals(){
        print(data.isEqual(data))
    }
    
    func toString(){
        print("data = \(data)")
    }
    
}
