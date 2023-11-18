//
//  ViewController.swift
//  DynamicRowheightUITableView
//
//  Created by himajaredddy on 20/04/23.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {


    @IBOutlet weak var tableView: UITableView!
    var dataModel = ["Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
    " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
    " It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        //making UI look good
        tableView.estimatedRowHeight = 50
       // tableView.rowHeight = UITableViewAutomaticDimension
        tableView.showsVerticalScrollIndicator = false
        tableView.layer.cornerRadius = 25

     }

    func numberOfSections(in tableView: UITableView) -> Int {
           return 1
       }
       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return dataModel.count
       }

       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = dataModel[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.textAlignment = .justified
        return cell

       }
}

