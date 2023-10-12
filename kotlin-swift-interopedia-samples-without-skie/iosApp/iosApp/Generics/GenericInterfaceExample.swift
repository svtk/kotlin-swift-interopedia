import Foundation
import shared

class SocketConverterImpl : SocketConverter {
    override func convert(element: String) -> Any {
        return element
    }
}

class GenericInterfaceExample {
    func example(){
        SocketConverter<String>().convert(123)
    }
}
