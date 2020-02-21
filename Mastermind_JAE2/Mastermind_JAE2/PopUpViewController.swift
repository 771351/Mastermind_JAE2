//
//  PopUpViewController.swift
//  Mastermind_JAE2
//
//  Created by MORALES, ADRIAN on 1/16/20.
//  Copyright © 2020 BURRIGHT, JACK. All rights reserved.
//

import UIKit

class PopUpViewController: UIViewController {
    
var Team1 = teamClass (name: "xxxxxx")
var Team2 = teamClass (name: "xxxxxx")
var Team3 = teamClass (name: "xxxxxx")
var Team4 = teamClass (name: "xxxxxx")
var Team5 = teamClass (name: "xxxxxx")
var Team6 = teamClass (name: "xxxxxx")
var Team7 = teamClass (name: "xxxxxx")
var Team8 = teamClass (name: "xxxxxx")
var Team9 = teamClass (name: "xxxxxx")
var Team10 = teamClass (name: "xxxxxx")
    
lazy var teamlist = [Team1, Team2, Team3, Team4, Team5, Team6, Team7, Team8, Team9, Team10]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.8)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func closePopUp(_ sender: UIButton) {
        self.view.removeFromSuperview()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBOutlet weak var newteamNAME: UITextField!
    
    @IBAction func goname(_ sender: Any) {
        if Team1.teamName == "xxxxxx"{
            Team1.changename(name: newteamNAME.text!)
            print(1)
            self.view.removeFromSuperview()
        }
        else if Team2.teamName == "xxxxxx"{
            Team2.changename(name: newteamNAME.text!)
            print(2)
            self.view.removeFromSuperview()
        }
        else if Team3.teamName == "xxxxxx"{
            Team3.changename(name: newteamNAME.text!)
            print(3)
            self.view.removeFromSuperview()
        }
        else if Team4.teamName == "xxxxxx"{
            Team4.changename(name: newteamNAME.text!)
            print(4)
            self.view.removeFromSuperview()
        }
        else if Team5.teamName == "xxxxxx"{
            Team5.changename(name: newteamNAME.text!)
            print(5)
            self.view.removeFromSuperview()
        }
        else if Team6.teamName == "xxxxxx"{
            Team6.changename(name: newteamNAME.text!)
            print(6)
            self.view.removeFromSuperview()
        }
        else if Team7.teamName == "xxxxxx"{
            Team7.changename(name: newteamNAME.text!)
            print(7)
            self.view.removeFromSuperview()
        }
        else if Team8.teamName == "xxxxxx"{
            Team8.changename(name: newteamNAME.text!)
            print(8)
            self.view.removeFromSuperview()
        }
        else if Team9.teamName == "xxxxxx"{
            Team9.changename(name: newteamNAME.text!)
            print(9)
            self.view.removeFromSuperview()
        }
        else if Team10.teamName == "xxxxxx"{
            Team10.changename(name: newteamNAME.text!)
            print(10)
            self.view.removeFromSuperview()
        }
        else{
            print("no mo teams!")
            self.view.removeFromSuperview()
        }
    }
    

}


