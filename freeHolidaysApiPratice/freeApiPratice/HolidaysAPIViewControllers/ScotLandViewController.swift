//
//  ViewController.swift
//  freeApiPratice
//
//  Created by himajaredddy on 03/05/23.
//

import UIKit

class ScotLandViewController: UIViewController {

    @IBOutlet weak var holidayTableView: UITableView!
    var holidaysListData:worldsHolidaysList?
     override func viewDidLoad() {
        super.viewDidLoad()
        callingFacility()
    }

    func callingFacility(){
        getUsersList()
        holidayTableView.dataSource = self
        let nibid = UINib(nibName: "HolidaysTableViewCell", bundle: nil)
        holidayTableView.register(nibid, forCellReuseIdentifier: "HolidayCustomCell")
    }

    func getUsersList(){
        let urlString = "https://www.gov.uk/bank-holidays.json"
        guard let holidayListURL = URL(string: urlString) else {
            return
        }
        let urlRequest = URLRequest(url: holidayListURL)

        URLSession.shared.dataTask(with: urlRequest) { [self](userData, responces, error) in
            do{
                guard let apiData = userData else{
                    return
                }
                //MARK: JSON codeable
                let jsonDecoder = JSONDecoder()
                holidaysListData = try jsonDecoder.decode(worldsHolidaysList.self, from: apiData)
                print("holidaysData:",holidaysListData ?? 0)
                var englandWalesListData = holidaysListData?.englandandwales?.events
                print("EnglandWalesData1:",englandWalesListData?.count ?? 0)
                print("scotlandData:",holidaysListData?.scotland?.events?.count ?? 0)
                print("NorthIrelandData:",holidaysListData?.northernireland?.events?.count as Any)
                DispatchQueue.main.async { [self] in
                    holidayTableView.reloadData()
                }
            }
            catch{
                print("err:","something went wrong")
            }

        }.resume()

    }
}
extension ScotLandViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return holidaysListData?.scotland?.events?.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let holidaysCell = holidayTableView.dequeueReusableCell(withIdentifier: "HolidayCustomCell", for: indexPath)as! HolidaysTableViewCell
        holidaysCell.titleLabel.text = "Title:\(holidaysListData?.scotland?.events?[indexPath.row].title ?? "")"
        holidaysCell.dateLabel.text = "Date:\(holidaysListData?.scotland?.events?[indexPath.row].date ?? "")"
        holidaysCell.buntingLabel.text = "bunting:\(holidaysListData?.scotland?.events?[indexPath.row].bunting ?? true)"
        holidaysCell.notesLabel.text = ("Notes:\(holidaysListData?.scotland?.events?[indexPath.row].notes)")
        return holidaysCell

    }
}

