//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Manpreet Singh on 17/04/19.
//  Copyright © 2019 Manpreet Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var game: Game?
    
    var gameScore: Int? {
        
        didSet {
            
            guard let unwrappedScore = gameScore else {
                
                print("Gamescore is nil")
                
                return
            }
            
            numberB.setTitle("\(unwrappedScore)", for: .normal)
        }
    }
    
    @IBOutlet weak var numberB: UIButton!
    
    @IBOutlet weak var fizzB: UIButton!
    
    @IBOutlet weak var buzzB: UIButton!
    
    @IBOutlet weak var fizzBuzzB: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        game = Game()
        
        gameScore = 0
    }
    
    func play(move: Move) {
        
        guard let unwrappedGame = game else {
            
            print("Game is nil")
            
            return
        }
        
        let response = unwrappedGame.play(move: move)
        
        gameScore = response.score
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        
        switch sender {
        
        case numberB:
            
            play(move: .number)
            
        case fizzB:
            
            play(move: .fizz)
            
        case buzzB:
            
            play(move: .buzz)
            
        case fizzBuzzB:
            
            play(move: .fizzBuzz)
            
        default:
            
            print("Invalid action")
        }
    }
}
