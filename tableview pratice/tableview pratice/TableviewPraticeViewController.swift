//
//  TableviewPraticeViewController.swift
//  tableview pratice
//
//  Created by himajaredddy on 14/11/23.
//

import UIKit

class TableviewPraticeViewController: UIViewController {

    @IBOutlet weak var nameTV: UITableView!
    var youtubechannelNames = ["hima","varshini","nakshtra","hasini","navya","navvu","himmu","himaja","hima1","varshini11","nakshtra1","hasini1","navya1","navvu1","himmu1","himaja1"]
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTV.delegate = self
        nameTV.dataSource = self
    }

}
extension TableviewPraticeViewController:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return youtubechannelNames.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = nameTV.dequeueReusableCell(withIdentifier: "namecell", for: indexPath)
        cell.textLabel?.text = youtubechannelNames[indexPath.row]
        cell.textLabel?.textColor = .green
        cell.textLabel?.font = .boldSystemFont(ofSize: 24)
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.layer.cornerRadius = 25

        return cell
    }


}
