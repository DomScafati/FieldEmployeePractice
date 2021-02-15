//
//  SecondViewController.swift
//  FieldEmployeePractice
//
//  Created by Field Employee on 2/15/21.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var descriptionBox: UITextView!
    
    let vc2Image = UIImageView();
    let vc2Label = UILabel();
    let vc2Describe = UITextView();
    override func viewDidLoad() {
        super.viewDidLoad()
        image.image = vc2Image.image;
        label.text = vc2Label.text;
        descriptionBox.text = vc2Describe.text;
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
