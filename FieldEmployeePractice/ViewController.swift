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
                
    }
    let dataSource = ["Ryu", "Ken"]
    let describe = Descriptions();
    let imageSource = [ #imageLiteral(resourceName: "ryuImage"), #imageLiteral(resourceName: "kenImage") ]
    let portraitSource = [ #imageLiteral(resourceName: "PngItem_832813"), #imageLiteral(resourceName: "pngwing.com")]
    
    var rowIndex = 0;
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
        rowIndex = row
        return dataSource[row]
        

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.destination is SecondViewController)
            {
            let vc = segue.destination as? SecondViewController
            vc?.vc2Image.image = portraitSource[rowIndex]
            vc?.vc2Label.text = describe.descriptionSource[rowIndex].name
            vc?.vc2Describe.text = describe.descriptionSource[rowIndex].description
            }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vcPickerView.dataSource = self;
        vcPickerView.delegate = self;
    }
}

