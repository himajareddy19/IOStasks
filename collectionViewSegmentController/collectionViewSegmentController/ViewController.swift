//
//  ViewController.swift
//  collectionViewSegmentController
//
//  Created by himajaredddy on 07/06/23.
//

import UIKit

class ViewController: UIViewController {
    var namesArray = ["Anders", "Kristian", "Sofia", "John", "Jenny", "Lina", "Annie", "Katie", "Johanna"]
    @IBOutlet weak var segmentCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerNib()
    }
    func registerNib() {
        segmentCollectionView.dataSource = self
        if let flowLayout = self.segmentCollectionView?.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.estimatedItemSize = CGSize(width: 1, height: 1)
        }
    }


}
extension ViewController:UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return namesArray.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let segmentcell = segmentCollectionView.dequeueReusableCell(withReuseIdentifier: "segmentCell", for: indexPath)as! segmentCollectionViewCell
        segmentcell.segmentLabel.text = namesArray[indexPath.row]
        return segmentcell
    }


}

