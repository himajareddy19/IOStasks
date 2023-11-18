//
//  ViewController.swift
//  tableview pratice
//
//  Created by himajaredddy on 20/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTable: UITableView!

    var youtubechannel = ["hima","varshini","nakshtra","hasini","navya","navvu","himmu","himaja","hima1","varshini11","nakshtra1","hasini1","navya1","navvu1","himmu1","himaja1"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myTable.delegate = self
        myTable.dataSource = self
    }


}
extension ViewController : UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return youtubechannel.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = myTable.dequeueReusableCell(withIdentifier: "himacell", for: indexPath)
        cell.textLabel?.textColor = .green
        cell.textLabel?.text = youtubechannel[indexPath.row]
        return cell
    }


}
