/// Generated by the Protocol Buffers 3.7.1 compiler.  DO NOT EDIT!
/// Protobuf-swift version: 4.0.0
/// Source file "Person.proto"
/// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct PersonRoot {
    public static let `default` = PersonRoot()
    public var extensionRegistry:ExtensionRegistry

    init() {
        extensionRegistry = ExtensionRegistry()
        registerAllExtensions(registry: extensionRegistry)
    }
    public func registerAllExtensions(registry: ExtensionRegistry) {
    }
}

final public class Person : GeneratedMessage {
    public typealias BuilderType = Person.Builder

    public static func == (lhs: Person, rhs: Person) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasName == rhs.hasName) && (!lhs.hasName || lhs.name == rhs.name)
        fieldCheck = fieldCheck && (lhs.hasAge == rhs.hasAge) && (!lhs.hasAge || lhs.age == rhs.age)
        fieldCheck = fieldCheck && (lhs.hasGender == rhs.hasGender) && (!lhs.hasGender || lhs.gender == rhs.gender)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }

    public fileprivate(set) var name:String! = nil
    public fileprivate(set) var hasName:Bool = false

    public fileprivate(set) var age:Int64! = nil
    public fileprivate(set) var hasAge:Bool = false

    public fileprivate(set) var gender:String! = nil
    public fileprivate(set) var hasGender:Bool = false

    required public init() {
        super.init()
    }
    override public func isInitialized() throws {
    }
    override public func writeTo(codedOutputStream: CodedOutputStream) throws {
        if hasName {
            try codedOutputStream.writeString(fieldNumber: 1, value:name)
        }
        if hasAge {
            try codedOutputStream.writeInt64(fieldNumber: 2, value:age)
        }
        if hasGender {
            try codedOutputStream.writeString(fieldNumber: 3, value:gender)
        }
        try unknownFields.writeTo(codedOutputStream: codedOutputStream)
    }
    override public func serializedSize() -> Int32 {
        var serialize_size:Int32 = memoizedSerializedSize
        if serialize_size != -1 {
         return serialize_size
        }

        serialize_size = 0
        if hasName {
            serialize_size += name.computeStringSize(fieldNumber: 1)
        }
        if hasAge {
            serialize_size += age.computeInt64Size(fieldNumber: 2)
        }
        if hasGender {
            serialize_size += gender.computeStringSize(fieldNumber: 3)
        }
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> Person.Builder {
        return Person.classBuilder() as! Person.Builder
    }
    public func getBuilder() -> Person.Builder {
        return classBuilder() as! Person.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return Person.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return Person.Builder()
    }
    public func toBuilder() throws -> Person.Builder {
        return try Person.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:Person) throws -> Person.Builder {
        return try Person.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        try isInitialized()
        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasName {
            jsonMap["name"] = name
        }
        if hasAge {
            jsonMap["age"] = "\(age!)"
        }
        if hasGender {
            jsonMap["gender"] = gender
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> Person {
        return try Person.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data, options: JSONSerialization.ReadingOptions = []) throws -> Person {
        return try Person.Builder.fromJSONToBuilder(data:data, options:options).build()
    }
    override public func getDescription(indent:String) throws -> String {
        var output = ""
        if hasName {
            output += "\(indent) name: \(String(describing: name)) \n"
        }
        if hasAge {
            output += "\(indent) age: \(String(describing: age)) \n"
        }
        if hasGender {
            output += "\(indent) gender: \(String(describing: gender)) \n"
        }
        output += unknownFields.getDescription(indent: indent)
        return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasName {
                hashCode = (hashCode &* 31) &+ name.hashValue
            }
            if hasAge {
                hashCode = (hashCode &* 31) &+ age.hashValue
            }
            if hasGender {
                hashCode = (hashCode &* 31) &+ gender.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Person"
    }
    override public func className() -> String {
        return "Person"
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
        fileprivate var builderResult:Person = Person()
        public func getMessage() -> Person {
            return builderResult
        }

        required override public init () {
            super.init()
        }
        public var name:String {
            get {
                return builderResult.name
            }
            set (value) {
                builderResult.hasName = true
                builderResult.name = value
            }
        }
        public var hasName:Bool {
            get {
                return builderResult.hasName
            }
        }
        @discardableResult
        public func setName(_ value:String) -> Person.Builder {
            self.name = value
            return self
        }
        @discardableResult
        public func clearName() -> Person.Builder{
            builderResult.hasName = false
            builderResult.name = nil
            return self
        }
        public var age:Int64 {
            get {
                return builderResult.age
            }
            set (value) {
                builderResult.hasAge = true
                builderResult.age = value
            }
        }
        public var hasAge:Bool {
            get {
                return builderResult.hasAge
            }
        }
        @discardableResult
        public func setAge(_ value:Int64) -> Person.Builder {
            self.age = value
            return self
        }
        @discardableResult
        public func clearAge() -> Person.Builder{
            builderResult.hasAge = false
            builderResult.age = nil
            return self
        }
        public var gender:String {
            get {
                return builderResult.gender
            }
            set (value) {
                builderResult.hasGender = true
                builderResult.gender = value
            }
        }
        public var hasGender:Bool {
            get {
                return builderResult.hasGender
            }
        }
        @discardableResult
        public func setGender(_ value:String) -> Person.Builder {
            self.gender = value
            return self
        }
        @discardableResult
        public func clearGender() -> Person.Builder{
            builderResult.hasGender = false
            builderResult.gender = nil
            return self
        }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> Person.Builder {
            builderResult = Person()
            return self
        }
        override public func clone() throws -> Person.Builder {
            return try Person.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> Person {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> Person {
            let returnMe:Person = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:Person) throws -> Person.Builder {
            if other == Person() {
                return self
            }
            if other.hasName {
                name = other.name
            }
            if other.hasAge {
                age = other.age
            }
            if other.hasGender {
                gender = other.gender
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> Person.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Person.Builder {
            let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(copyFrom:self.unknownFields)
            while (true) {
                let protobufTag = try codedInputStream.readTag()
                switch protobufTag {
                case 0: 
                    self.unknownFields = try unknownFieldsBuilder.build()
                    return self

                case 10:
                    name = try codedInputStream.readString()

                case 16:
                    age = try codedInputStream.readInt64()

                case 26:
                    gender = try codedInputStream.readString()

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> Person.Builder {
            let resultDecodedBuilder = Person.Builder()
            if let jsonValueName = jsonMap["name"] as? String {
                resultDecodedBuilder.name = jsonValueName
            }
            if let jsonValueAge = jsonMap["age"] as? String {
                resultDecodedBuilder.age = Int64(jsonValueAge)!
            } else if let jsonValueAge = jsonMap["age"] as? Int {
                resultDecodedBuilder.age = Int64(jsonValueAge)
            }
            if let jsonValueGender = jsonMap["gender"] as? String {
                resultDecodedBuilder.gender = jsonValueGender
            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data, options: JSONSerialization.ReadingOptions = []) throws -> Person.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: options)
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try Person.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

extension Person: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<Person> {
        var mergedArray = Array<Person>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> Person? {
        return try Person.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> Person {
        return try Person.Builder().mergeFrom(data: data, extensionRegistry:PersonRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> Person {
        return try Person.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> Person {
        return try Person.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> Person {
        return try Person.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> Person {
        return try Person.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Person {
        return try Person.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "name": return self.name
        case "age": return self.age
        case "gender": return self.gender
        default: return nil
        }
    }
}
extension Person.Builder: GeneratedMessageBuilderProtocol {
    public typealias GeneratedMessageType = Person
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "name": return self.name
            case "age": return self.age
            case "gender": return self.gender
            default: return nil
            }
        }
        set (newSubscriptValue) { 
            switch key {
            case "name":
                guard let newSubscriptValue = newSubscriptValue as? String else {
                    return
                }
                self.name = newSubscriptValue
            case "age":
                guard let newSubscriptValue = newSubscriptValue as? Int64 else {
                    return
                }
                self.age = newSubscriptValue
            case "gender":
                guard let newSubscriptValue = newSubscriptValue as? String else {
                    return
                }
                self.gender = newSubscriptValue
            default: return
            }
        }
    }
}

// @@protoc_insertion_point(global_scope)
