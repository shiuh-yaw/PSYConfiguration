//
//  Configurations.swift
//  Space
//
//  Created by Shiuh Yaw Phang on 01/11/2016.
//  Copyright © 2016 Shiuh Yaw Phang. All rights reserved.
//

import Foundation

public protocol PlistValueType {}

extension String: PlistValueType {}
extension NSURL: PlistValueType {}
extension NSNumber: PlistValueType {}
extension Int: PlistValueType {}
extension Float: PlistValueType {}
extension Double: PlistValueType {}
extension Bool: PlistValueType {}
extension NSDate: PlistValueType {}
extension NSData: PlistValueType {}
extension Array: PlistValueType {}
extension Dictionary: PlistValueType {}

// Extend this class and add your plist key as static constants
// so you can use the shortcut dot notation (e.g. `configuration.get(.yourkey)`)

public class Keys {}

public final class Key<ValueType: PlistValueType>: Keys {
    
    public let key: String
    
    internal var separatedKeys: [String] {
        
        return key.components(separatedBy: ",")
    }
    
    public init(_ key: String) {
        
        self.key = key
    }
}

public class Configuration: NSObject{
    
    let ConfigurationPlistKey = "ConfigurationFileName"
    let CurrentConfigurationPlistKey = "Configuration"
    
    public private(set) var configurationName: String?
    private var dictionary: NSDictionary!
    static var standard: Configuration = Configuration.defaultConfiguration()
    
    private static func defaultConfiguration() -> Configuration {
        
        struct Static {
            static var instance = Configuration()
        }
        return Static.instance
    }

    private override init() {
        
        super.init()
        let bundle = Bundle.main
        guard let infoDictionary = bundle.infoDictionary else {
            return
        }
        guard let configName = infoDictionary[CurrentConfigurationPlistKey] as? String else {
            fatalError("No Configuration property found in plist")
        }
        guard let plistName = infoDictionary[self.ConfigurationPlistKey] as? String else {
            fatalError("No Configuration property found in plist")
        }
        guard let plistPath = bundle.path(forResource: plistName, ofType: "plist") else {
            fatalError("Plist file invalid")
        }
        guard let dictionaryPlistPath = NSDictionary(contentsOfFile: plistPath) else {
            fatalError("Content Plist file invalid")
        }
        guard let dictionary = dictionaryPlistPath.value(forKey: configName) as? NSDictionary else {
            fatalError("Valur content of Plist invalid")
        }
        self.configurationName = configName
        self.dictionary = dictionary
    }
    
    public subscript(key: String) -> AnyObject? {
        
        get {
            return self.dictionary.value(forKey: key) as AnyObject?
        }
    }
    
    public func get<T>(key: Key<T>) -> T? {
        
        var object: AnyObject = dictionary
        key.separatedKeys.enumerated().forEach { (idx, separatedKey) in
            if let index = Int(separatedKey) {
                let array = object as! Array<AnyObject>
                object = array[index]
            }
            else {
                let dictionary = object as! NSDictionary
                object = dictionary[separatedKey]! as AnyObject
            }
        }
        let optionalValue: T?
        switch T.self{
        case is Int.Type: optionalValue     = object.integerValue as? T
        case is Float.Type: optionalValue   = object.floatValue as? T
        case is Double.Type: optionalValue  = object.doubleValue as? T
        case is NSURL.Type: optionalValue   = NSURL(string: (object as? String) ?? "") as? T
        default: optionalValue              = object as? T
        }
        
        guard let value = optionalValue else {
            assertionFailure("Could not case value of type \(type(of: object)) to \(T.self)")
            return nil
        }
        return value
    }
}



























