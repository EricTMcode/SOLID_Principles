//
//  OCP_After.swift
//  SOLID_Principles
//
//  Created by Eric on 18/07/2023.
//
/*:
 ## Open-Closed Principle
 [Wikipedia](https://en.wikipedia.org/wiki/Open%E2%80%93closed_principle)

 "Entities should be open for extension but closed for modification."

 A class is closed, since it may be compiled, stored in a library, baselined, and used by client classes. But it is also open, since any new class may use it as parent, adding new features. When a descendant class is defined, there is no need to change the original or to disturb its clients.
 
 */

import Foundation

fileprivate protocol PaymentProtocol {
    func makePayment(amount: Double)
}

fileprivate class CashPayment: PaymentProtocol {
    func makePayment(amount: Double) {
        // Perform
    }
}

fileprivate class VisaPayment: PaymentProtocol {
    func makePayment(amount: Double) {
        // Perform
    }
}

fileprivate class MasterCardPayment: PaymentProtocol {
    func makePayment(amount: Double) {
        // Perform
    }
}

fileprivate class PaymentManager {
    func makePayment(amount: Double, payment: PaymentProtocol) {
        payment.makePayment(amount: amount)
    }
}
