//
//  ColorInfoViewController.swift
//  Colors
//
//  Created by Zachary Dobbs on 3/18/18.
//  Copyright © 2018 Zachary Dobbs. All rights reserved.
//

import UIKit

class ColorInfoViewController: UIViewController {

    var newColor: UIColor?
    
    @IBOutlet weak var colorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = newColor
        self.colorLabel.text = title
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
