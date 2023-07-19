//
//  LSP_Before.swift
//  SOLID_Principles
//
//  Created by Eric on 18/07/2023.
//

import Foundation

fileprivate class Rectangle {
    
    var width: Float = 0
    var height: Float = 0
    
    func set(width: Float) {
        self.width = width
    }
    
    func set(height: Float) {
        self.height = height
    }
    
    func calculateArea() -> Float {
        return width * height
    }
}

fileprivate class Square: Rectangle {
    
    override func set(width: Float) {
        self.width = width
        self.height = width
    }
    
    override func set(height: Float) {
        self.height = height
        self.width = width
    }
}

// Breaks the LSP
fileprivate func setSizeAndPrintArea(of rectangle: Rectangle) {
    rectangle.set(height: 5)
    rectangle.set(width: 4)
    print(rectangle.calculateArea())
}

fileprivate func example() {
    let rectangle = Rectangle()
    setSizeAndPrintArea(of: rectangle) // prints 20
    
    let square = Square()
    setSizeAndPrintArea(of: square) // print 16
}
