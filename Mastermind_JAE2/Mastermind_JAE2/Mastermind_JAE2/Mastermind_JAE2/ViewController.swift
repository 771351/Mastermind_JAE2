//
//  ViewController.swift
//  Mastermind_JAE2
//
//  Created by BURRIGHT, JACK on 1/13/20.
//  Copyright © 2020 BURRIGHT, JACK. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var Totalview: UIView!
    @IBOutlet weak var backgroundButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ViewTNa.layer.cornerRadius = 40
    }
    //popup to add new team
    @IBOutlet weak var ViewTNa: UIView!
    
    @IBAction func showPopUp(_ sender: UIButton) {
        ViewTNa.frame.origin.x = 192
        backgroundButton.alpha = 0.7
    }
    //moves popup off screen
    @IBAction func closebuttom (_ sender: Any) {
        ViewTNa.frame.origin.x = -500
        backgroundButton.alpha = 0
    }
    //moves popup off screen
    @IBAction func goteamname(_ sender: Any) {
        ViewTNa.frame.origin.x = -500
        backgroundButton.alpha = 0
    }
    
    
    
    //timer popup
    @IBAction func showSPopUp(_ sender: UIButton) {
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "sbSPopUpID") as! SecondPopUpViewController
        self.addChild(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParent: self)
    }
    //popup to rules
    @IBAction func showTPopUp(_ sender: UIButton) {
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "sbTPopUpID") as! ThirdPopUpViewController
        self.addChild(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParent: self)
    }
}

