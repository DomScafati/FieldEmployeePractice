//
//  ViewController.swift
//  FieldEmployeePractice
//
//  Created by Field Employee on 2/15/21.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    

    @IBOutlet weak var vcLabel: UILabel!
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var vcPickerView: UIPickerView!
    @IBOutlet weak var vcImageView: UIImageView!
    @IBAction func vcButton(_ sender: UIButton) {
        
        print("go to next page");
    }
    let dataSource = ["Ryu", "Ken"]
    let imageSource = [ #imageLiteral(resourceName: "ryuImage"), #imageLiteral(resourceName: "kenImage") ]

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }//number of columns
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        dataSource.count;
        }//number of rows
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        switch row {
        case 0:
            vcImageView.image = #imageLiteral(resourceName: "ryuImage")
            vcLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            vcLabel.text = "You must defeat Shen Long to stand a chance."
        case 1:
            vcImageView.image = #imageLiteral(resourceName: "kenImage")
            vcLabel.textColor = #colorLiteral(red: 1, green: 0.08404085115, blue: 0, alpha: 1)
            vcLabel.text = "Lets turn up the heat!"
        default:
            vcImageView.image = #imageLiteral(resourceName: "ryuImage")
            vcLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)

        }
        return dataSource[row]

    }
//
//    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
//        return NSAttributedString(string: dataSource[row], attributes: [NSAttributedString.Key.foregroundColor: UIColor.yellow])
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vcPickerView.dataSource = self;
        vcPickerView.delegate = self;
    }
}

