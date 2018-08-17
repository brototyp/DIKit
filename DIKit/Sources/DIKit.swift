// DIKit.swift
//
// - Authors:
// Ben John
//
// - Date: 17.08.18
//
// Copyright © 2018 Ben John. All rights reserved.
    

import Foundation

extension DependencyContainer {
    static var shared: DependencyContainer {
        guard let sharedDelegateCasted = UIApplication.shared.delegate as? DefinesContainer else {
            fatalError("The main application delegate needs to conform `DefinesContainer`.")
        }
        return sharedDelegateCasted.container
    }
}

/// TODO
public func inject<T>() -> T {
    return DependencyContainer.shared.resolve()
}