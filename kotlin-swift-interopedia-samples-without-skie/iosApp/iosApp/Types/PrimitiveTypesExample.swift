import Foundation
import shared

class PrimitiveTypesExample{
    func integerTypesExample(
        byteType: Int8,
        shortType: Int16,
        intType: Int32,
        longType: Int64
    ) {
        let types = PrimitiveTypesClass()
        
        let _: Int8 = types.byteType(b: 1)
        let _: Int8 = types.byteType(b: byteType)
        
        let _: Int16 = types.shortType(s: 1)
        let _: Int16 = types.shortType(s: shortType)
        
        let _: Int32 = types.intType(i: 1)
        let _: Int32 = types.intType(i: intType)
        
        let _: Int64 = types.longType(l: 1)
        let _: Int64 = types.longType(l: longType)
    }
    
    func swiftIntTypeExample(swiftIntType: Int) {
        let types = PrimitiveTypesClass()
        
        let _: Int = Int( types.byteType(b: Int8(swiftIntType)) )
        let _: Int = Int( types.shortType(s: Int16(swiftIntType)) )
        let _: Int = Int( types.intType(i: Int32(swiftIntType)) )
        let _: Int = Int( types.longType(l: Int64(swiftIntType)) )
    }
    
    func realTypesExample(
        floatType: Float,
        doubleType: Double
    ) {
        let types = PrimitiveTypesClass()
        
        let _: Float = types.floatType(f: 1.0)
        let _: Float = types.floatType(f: floatType)
        
        let _: Double = types.doubleType(d: 1.0)
        let _: Double = types.doubleType(d: doubleType)
    }
    
    func charTypeExample(
        unicharType: unichar,
        stringType: String
    ) {
        let types = PrimitiveTypesClass()
        
        let _: unichar = types.charType(c:  ("a" as NSString).character(at: 0))
        let _: unichar = types.charType(c: unicharType)
        let _: unichar = types.charType(c: (stringType as NSString).character(at: 0))
    }
    
    func stringTypeExample(stringType: String) {
        let types = PrimitiveTypesClass()
        
        let _: String = types.stringType(s: "123")
        
        let _: String = types.stringType(s: stringType)
    }
    
    func boolTypeExample(boolType: Bool) {
        let types = PrimitiveTypesClass()
        
        let _: Bool = types.booleanType(b: true)
        let _: Bool = types.booleanType(b: false)
        
        let _: Bool = types.booleanType(b: boolType)
    }
}
