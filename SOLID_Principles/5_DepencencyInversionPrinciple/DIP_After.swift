//
//  DIP_After.swift
//  SOLID_Principles
//
//  Created by Eric on 20/07/2023.
//
/*:
 ### Depencency Inversion Principle
 [Wikipedia](https://en.wikipedia.org/wiki/Dependency_inversion_principle)
 
 "Depend on Abstractions not on Concretions."

High level modules should not depend upon low level modules. Both should depend upon abstractions.
 
Abstractions should not depend upon details. Details should depend upon abstractions.

 */

import Foundation

fileprivate protocol Workable {
    func work()
}

fileprivate struct Employee: Workable {
    func work() {
        print("Working...")
    }
}

fileprivate struct Employer {
    var workables: [Workable]
    
    func manage() {
        workables.forEach { workable in
            workable.work()
        }
    }
}

fileprivate func example() {
    let employer = Employer(workables: [Employee()])
    employer.manage() 
}
