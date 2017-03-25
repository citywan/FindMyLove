//
//  FindMyLoveViewController.swift
//  FindMyLove
//
//  Created by citywan on 2017/3/25.
//  Copyright © 2017年 citywan. All rights reserved.
//

import UIKit

class FindMyLoveViewController: UIViewController {

    @IBOutlet weak var nationality: UITextField!

    @IBOutlet weak var age: UISlider!
    @IBOutlet weak var holiday: UISegmentedControl!
    @IBOutlet weak var patient: UISwitch!
    @IBOutlet weak var love: UISwitch!
    @IBOutlet weak var answerno: UIImageView!
    @IBOutlet weak var answeryes: UIImageView!
    @IBOutlet weak var agelabel: UILabel!
    @IBOutlet weak var refind: UIButton!
    
    @IBAction func ageslider(_ sender: Any) {
        agelabel.text = "\(Int(age.value))"
    }
    
    
    
    @IBAction func match(_ sender: Any) {
        if nationality.text! == "Taiwan" && holiday.selectedSegmentIndex == 0 && age.value > 18 && patient.isOn && love.isOn {
            
            answeryes.isHidden = false
            answerno.isHidden = true
            refind.isHidden = true
            }
            
    else {
            answeryes.isHidden = true
            answerno.isHidden = false
            refind.isHidden = false
        }

    }
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
