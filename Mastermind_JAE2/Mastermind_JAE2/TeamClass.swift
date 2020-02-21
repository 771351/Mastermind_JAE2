
//  Team Class.swift
//  Mastermind_JAE2
//
//  Created by BURRIGHT, JACK on 1/7/20.
//  Copyright © 2020 BURRIGHT, JACK. All rights reserved.
//

import Foundation
class teamClass {
    var gamesP : Int
    var gamesW : Int
    var gamesL : Int
    var aver : Int
    var won1 : Int
    var won2 : Int
    var won3 : Int
    var won4 : Int
    var won5 : Int
    var won6 : Int
    var won7 : Int
    var won8 : Int
    var teamName : String
    var gameGuess : Int
    var everyGuess : Int
    
    init(name: String){
        self.teamName = name
        self.gamesP = 0
        self.gamesW = 0
        self.gamesL = 0
        self.aver = 0
        self.won1 = 0
        self.won2 = 0
        self.won3 = 0
        self.won4 = 0
        self.won5 = 0
        self.won6 = 0
        self.won7 = 0
        self.won8 = 0
        self.gameGuess = 0
        self.everyGuess = 0
    }
    
    
    func changename(name: String){
        
        self.teamName = name
    }
    func changegamesP(){
        self.gamesP = self.gamesP + 1
    }
    func changegamesW(){
           self.gamesW = self.gamesW + 1
       }
    func changegamesL(){
           self.gamesL = self.gamesL + 1
       }
    func changeaver(){
        self.aver = self.everyGuess/self.gamesP
          }
    
    
    func gameDONE(gamesP: Int, aver: Int, gameGuess: Int){
        
        self.gamesP = gamesP+1
        
        if (self.gameGuess == 1){
            self.won1 = self.won1+1
        }
        else if (self.gameGuess == 2){
            self.won2 = self.won2+1
        }
        else if (self.gameGuess == 3){
            self.won3 = self.won3+1
        }
        else if (self.gameGuess == 4){
            self.won4 = self.won4+1
        }
        else if (self.gameGuess == 5){
            self.won5 = self.won5+1
        }
        else if (self.gameGuess == 6){
            self.won6 = self.won6+1
        }
        else if (self.gameGuess == 7){
            self.won7 = self.won7+1
        }
        else if (self.gameGuess == 8){
            self.won8 = self.won8+1
        }
        
        self.everyGuess = self.everyGuess + gameGuess
        self.aver = (self.everyGuess / gamesP)
 
    }
    
}
