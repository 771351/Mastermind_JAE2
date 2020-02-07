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
    @IBOutlet weak var guess1num1: UILabel!
    @IBOutlet weak var guess1num2: UILabel!
    @IBOutlet weak var guess1num3: UILabel!
    
    var nums = [["0","1","2","3","4","5","6","7","8","9"],["0","1","2","3","4","5","6","7","8","9"],["0","1","2","3","4","5","6","7","8","9"]]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return nums[component][row]
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return nums[component].count
    }
    var x = "0"
    var y = "0"
    var z = "0"
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
       
        if  component == 0 {
            guess1num1.text = nums[component][row]
            x = nums[component][row]
        }
        if component == 1 {
            guess1num2.text = nums[component][row]
            y = nums[component][row]
        }
        if component == 2 {
            guess1num3.text = nums[component][row]
            z = nums[component][row]
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
