//
//  ViewController.swift
//  CollectionView
//
//  Created by Sabbir on 1/10/20.
//  Copyright © 2020 Sabbir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionview: UICollectionView!
    

    var imgArray = ["Welcome","New Technology","Sabbir Hossain","Demo","Collectionview"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

extension ViewController: UICollectionViewDataSource,UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgArray.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? DataCollectionViewCell
        cell?.img.image = UIImage(named: imgArray[indexPath.row])
        cell?.lbl.text = imgArray [indexPath.row]
        return cell!
    }
}
