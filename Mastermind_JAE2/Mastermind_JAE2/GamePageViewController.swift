//
//  pickerviewclass.swift
//  Mastermind_JAE2
//
//  Created by BURRIGHT, JACK on 2/4/20.
//  Copyright © 2020 BURRIGHT, JACK. All rights reserved.
//

import UIKit

class GamePageViewController: UIViewController, UIPickerViewDataSource,UIPickerViewDelegate {

    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var num1guess1: UILabel!
    @IBOutlet weak var num1guess2: UILabel!
    @IBOutlet weak var num1guess3: UILabel!
    @IBOutlet weak var num2guess1: UILabel!
    @IBOutlet weak var num2guess2: UILabel!
    @IBOutlet weak var num2guess3: UILabel!
    @IBOutlet weak var num3guess1: UILabel!
    @IBOutlet weak var num3guess2: UILabel!
    @IBOutlet weak var num3guess3: UILabel!
    @IBOutlet weak var num4guess1: UILabel!
    @IBOutlet weak var num4guess2: UILabel!
    @IBOutlet weak var num4guess3: UILabel!
    @IBOutlet weak var num5guess1: UILabel!
    @IBOutlet weak var num5guess2: UILabel!
    @IBOutlet weak var num5guess3: UILabel!
    @IBOutlet weak var num6guess1: UILabel!
    @IBOutlet weak var num6guess2: UILabel!
    @IBOutlet weak var num6guess3: UILabel!
    @IBOutlet weak var num7guess1: UILabel!
    @IBOutlet weak var num7guess2: UILabel!
    @IBOutlet weak var num7guess3: UILabel!
    @IBOutlet weak var num8guess1: UILabel!
    @IBOutlet weak var num8guess2: UILabel!
    @IBOutlet weak var num8guess3: UILabel!
    
    
    
    var guesses = [["","",""],["","",""],["","",""],["","",""],["","",""],["","",""],["","",""],["","",""],["","",""]]
    
    let nums = [["0","1","2","3","4","5","6","7","8","9"],["0","1","2","3","4","5","6","7","8","9"],["0","1","2","3","4","5","6","7","8","9"]]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return nums[component][row]
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return nums[component].count
    }
    var count = 0

    @IBAction func goButton(_ sender: Any) {
       
        if guesses[count][0] != "" && guesses[count][1] != "" && guesses[count][2] != "" && count < 8
        {
         
        count = count + 1
    }
        if count == 8
        {
            for row in (0...7)
                {
                for col in (0...2)
                    {
                        let nothing = ""
                            guesses[row][col] = nothing
                    }
                                      
                }
                num1guess1.text = ""
                num1guess2.text = ""
                num1guess3.text = ""
                num2guess1.text = ""
                num2guess2.text = ""
                num2guess3.text = ""
                num3guess1.text = ""
                num3guess2.text = ""
                num3guess3.text = ""
                num4guess1.text = ""
                num4guess2.text = ""
                num4guess3.text = ""
                num5guess1.text = ""
                num5guess2.text = ""
                num5guess3.text = ""
                num6guess1.text = ""
                num6guess2.text = ""
                num6guess3.text = ""
                num7guess1.text = ""
                num7guess2.text = ""
                num7guess3.text = ""
                num8guess1.text = ""
                num8guess2.text = ""
                num8guess3.text = ""
            count = 0 
            let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "sbGPopUpID") as! GamePopUpViewController
                   self.addChild(popOverVC)
                   popOverVC.view.frame = self.view.frame
                   self.view.addSubview(popOverVC.view)
                   popOverVC.didMove(toParent: self)
            
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if count == 0{
              if component == 0  {
                num1guess1.text = nums[component][row]
                guesses[0][0] = nums[component][row]
           
        }
        if component == 1  {
            num1guess2.text = nums[component][row]
           guesses[0][1] = nums[component][row]
        }
        if component == 2  {
            num1guess3.text = nums[component][row]
            guesses[0][2] = nums[component][row]
         
        }
        //second row
        }
        if count == 1{
        if component == 0  {
            num2guess1.text = nums[component][row]
            guesses[1][0] = nums[component][row]
           
        }
        if component == 1  {
            num2guess2.text = nums[component][row]
            guesses[1][1] = nums[component][row]
           
        }
        if component == 2  {
            num2guess3.text = nums[component][row]
            guesses[1][2] = nums[component][row]
           
        }
    
        }
        //third row
        if count == 2{
            if component == 0  {
                num3guess1.text = nums[component][row]
                guesses[2][0] = nums[component][row]
               
            }
            if component == 1  {
                num3guess2.text = nums[component][row]
                guesses[2][1] = nums[component][row]
               
            }
            if component == 2  {
                num3guess3.text = nums[component][row]
                guesses[2][2] = nums[component][row]
               
            }
        
            }
        //fourth row
        if count == 3{
            if component == 0  {
                num4guess1.text = nums[component][row]
                guesses[3][0] = nums[component][row]
               
            }
            if component == 1  {
                num4guess2.text = nums[component][row]
                guesses[3][1] = nums[component][row]
               
            }
            if component == 2  {
                num4guess3.text = nums[component][row]
                guesses[3][2] = nums[component][row]
               
            }
        
            }
        //fifth row
        if count == 4{
            if component == 0  {
                num5guess1.text = nums[component][row]
                guesses[4][0] = nums[component][row]
               
            }
            if component == 1  {
                num5guess2.text = nums[component][row]
                guesses[4][1] = nums[component][row]
               
            }
            if component == 2  {
                num5guess3.text = nums[component][row]
                guesses[4][2] = nums[component][row]
               
            }
        
            }
        //sixth row
        if count == 5{
            if component == 0  {
                num6guess1.text = nums[component][row]
                guesses[5][0] = nums[component][row]
               
            }
            if component == 1  {
                num6guess2.text = nums[component][row]
                guesses[5][1] = nums[component][row]
               
            }
            if component == 2  {
                num6guess3.text = nums[component][row]
                guesses[5][2] = nums[component][row]
               
            }
        
            }
        //seveth row
        if count == 6{
            if component == 0  {
                num7guess1.text = nums[component][row]
                guesses[6][0] = nums[component][row]
               
            }
            if component == 1  {
                num7guess2.text = nums[component][row]
                guesses[6][1] = nums[component][row]
               
            }
            if component == 2  {
                num7guess3.text = nums[component][row]
                guesses[6][2] = nums[component][row]
               
            }
        
            }
        //eighth row
        if count == 7{
            if component == 0  {
                num8guess1.text = nums[component][row]
                guesses[7][0] = nums[component][row]
               
            }
            if component == 1  {
                num8guess2.text = nums[component][row]
                guesses[7][1] = nums[component][row]
               
            }
            if component == 2  {
                num8guess3.text = nums[component][row]
                guesses[7][2] = nums[component][row]
               
            }
            
        
            }
        
        if count == 8
        {
            
            num1guess1.text = ""
            num1guess2.text = ""
            num1guess3.text = ""
            num2guess1.text = ""
            num2guess2.text = ""
            num2guess3.text = ""
            num3guess1.text = ""
            num3guess2.text = ""
            num3guess3.text = ""
            num4guess1.text = ""
            num4guess2.text = ""
            num4guess3.text = ""
            num5guess1.text = ""
            num5guess2.text = ""
            num5guess3.text = ""
            num6guess1.text = ""
            num6guess2.text = ""
            num6guess3.text = ""
            num7guess1.text = ""
            num7guess2.text = ""
            num7guess3.text = ""
            num8guess1.text = ""
            num8guess2.text = ""
            num8guess3.text = ""
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
