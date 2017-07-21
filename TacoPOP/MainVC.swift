//
//  MainVC.swift
//  TacoPOP
//
//  Created by Settar Hummetli on 7/21/17.
//  Copyright © 2017 Settar Hummetli. All rights reserved.
//

import UIKit

class MainVC: UIViewController, DataServiceDelegate {

    @IBOutlet weak var headerView: HeaderView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var ds = DataService.instanse
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ds.delegate = self
        ds.loadDeliciousTacoData()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        headerView.addDropShadow()
        
        let nib = UINib(nibName: "TacoCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "TacoCell")
    }

    func deliciousTacoDataLoaded() {
        print("Delicious Taco Data Loaded!")
    }

}


extension MainVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
 
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return ds.tacoArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TacoCell", for: indexPath) as? TacoCell {
            cell.configuringCell(taco: ds.tacoArray[indexPath.row])
            return cell
        }
        
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 95, height: 95)
    }
    
}





