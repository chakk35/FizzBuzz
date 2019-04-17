//
//  Brain.swift
//  FizzBuzz
//
//  Created by Manpreet Singh on 17/04/19.
//  Copyright © 2019 Manpreet Singh. All rights reserved.
//

import Foundation

class Brain {
    
    func isDivisibleByThree(number: Int) -> Bool {
        
        return isDivisibleBy(dividend: number, divisor: 3)
    }
    
    func isDivisibleByFive(number: Int) -> Bool {
        
        return isDivisibleBy(dividend: number, divisor: 5)
    }
    
    func isDivisibleByFifteen(number: Int) -> Bool {
        
        return isDivisibleBy(dividend: number, divisor: 15)
    }
    
    func isDivisibleBy(dividend: Int, divisor: Int) -> Bool {
        
        return dividend % divisor == 0
    }
    
    func check(number: Int) -> Move {
        
        if isDivisibleByFifteen(number: number) {
            
            return .fizzBuzz
        
        } else if isDivisibleByFive(number: number) {
            
            return .buzz
            
        } else if isDivisibleByThree(number: number) {
            
            return .fizz
        
        } else {
            
            return .number
        }
    }
}
