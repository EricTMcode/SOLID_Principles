//
//  DIP_Before.swift
//  SOLID_Principles
//
//  Created by Eric on 20/07/2023.
//

import Foundation

fileprivate struct Employee {
    func work() {
        print("Working... ")
    }
}

fileprivate struct Employer {
    var employees: [Employee]
    
    func manage() {
        employees.forEach { employee in
            employee.work()
        }
    }
}

fileprivate func example() {
    let employer = Employer(employees: [Employee()])
    employer.manage()
}
