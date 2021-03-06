//
//  ValidationAttribute.swift
//  iOSBaseProject
//
//  Created by Mark G on 8/12/18.
//  Copyright © 2018 Mark G. All rights reserved.
//

import UIKit

public struct ValidationAttribute: Hashable {
    public var rule: ValidationRule
    public var name: String
    
    public init(rule:ValidationRule, name: String) {
        self.rule = rule
        self.name = name
        
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(name.hashValue ^ rule.hashValue)
    }
    
    public static func == (lhs: ValidationAttribute, rhs: ValidationAttribute) -> Bool {
        return lhs.rule == rhs.rule && lhs.name == rhs.name
    }
}
