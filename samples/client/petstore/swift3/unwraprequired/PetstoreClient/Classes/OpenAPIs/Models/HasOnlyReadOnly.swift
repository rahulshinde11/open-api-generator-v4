//
// HasOnlyReadOnly.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


open class HasOnlyReadOnly: JSONEncodable {

    public var bar: String?
    public var foo: String?


    public init(bar: String?=nil, foo: String?=nil) {
        self.bar = bar
        self.foo = foo
    }
    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["bar"] = self.bar
        nillableDictionary["foo"] = self.foo

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}

