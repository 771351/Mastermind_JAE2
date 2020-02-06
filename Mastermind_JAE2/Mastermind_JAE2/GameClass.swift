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
    
    
}
