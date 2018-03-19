//
//  ColorsTableViewController.swift
//  Colors
//
//  Created by Zachary Dobbs on 3/13/18.
//  Copyright © 2018 Zachary Dobbs. All rights reserved.
//

import UIKit

class ColorsTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    // link to UITableView
    @IBOutlet weak var colorsTable: UITableView!
    
    // establish data for the table
    let colors = ["red", "orange", "yellow", "green", "blue", "purple", "brown"]
    // array of corresponding background colors for the bonus assignment
    let backgroundColors = [UIColor.red, UIColor.orange, UIColor.yellow, UIColor.green, UIColor.blue, UIColor.purple, UIColor.brown]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // establish requirements for UITableView colorsTable
        colorsTable.delegate = self
        colorsTable.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // number of rows equal to number of colors
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = colorsTable.dequeueReusableCell(withIdentifier: "colorCell")
        
        // get the name of the cell from the colors array
        cell?.textLabel?.text = colors[indexPath.row]
        // get the background color from the corresponding backgroundColors array
        cell?.backgroundColor = backgroundColors[indexPath.row]
        return cell!
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
