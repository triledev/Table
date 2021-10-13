//
//  ViewController.swift
//  Table
//
//  Created by Field Employee on 10/12/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var dateLabel: UILabel!
    
    let tableViewData = Array(repeating: "Item", count: 15)
    
    let secondaryArray = ["One", "Two", "Three", "Four", "Five"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "TableviewCell")
        tableView.dataSource = self
    }

    // TableViewDataSource methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.secondaryArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableviewCell", for: indexPath)
        cell.textLabel?.text = self.secondaryArray[indexPath.row]
        return cell
    }
    
    @IBAction func datePickerSelect(_ sender: Any) {
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short
        
        let startDate = dateFormatter.string(from: datePicker.date)
        dateLabel.text = startDate
    }
}

