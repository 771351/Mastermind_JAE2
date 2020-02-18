//
//  GameClass.swift
//  Mastermind_JAE2
//
//  Created by VELDHUIS, EMMA on 2/3/20.
//  Copyright © 2020 BURRIGHT, JACK. All rights reserved.
//

import Foundation

// making function to create random answers
class GameClass{
    var firstAnswer : Int
    var secondAnswer : Int
    var thirdAnswer : Int
   
    init(){
    self.firstAnswer = 0
    self.secondAnswer = 0
    self.thirdAnswer = 0
    }

func newAnswer() {
   firstAnswer = Int.random(in: 0..<9)
   secondAnswer = Int.random(in: 0..<9)
    while (firstAnswer == secondAnswer)
    {
        secondAnswer = Int.random(in: 0..<9)
    }
   thirdAnswer = Int.random(in: 0..<9)
    while (firstAnswer == thirdAnswer || secondAnswer == thirdAnswer)
    {
        thirdAnswer = Int.random(in: 0..<9)
    }
  
}
    
    //function that checks guesses
    func checkGuess (guess1: Int, guess2: Int, guess3: Int)
        {
        if (guess1 == firstAnswer)
        {
            //blacks circle should be printed
        }
        
        if (guess2 == secondAnswer)
        {
            //black circle should be printed
        }
        
        if (guess2 == thirdAnswer)
        {
            //black circle should be printed
        }
        
        if (guess1 == secondAnswer || guess1 == thirdAnswer)
        {
            //open circle should be printed
        }
        
        if (guess2 == firstAnswer || guess2 == thirdAnswer)
        {
            //open circle should be printed
        }
        
        if (guess3 == firstAnswer || guess3 == secondAnswer)
        {
            //open circle should be printed
        }
        
    }

}
