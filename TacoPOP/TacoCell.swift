//
//  TacoCell.swift
//  TacoPOP
//
//  Created by Settar Hummetli on 7/21/17.
//  Copyright © 2017 Settar Hummetli. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell {

    @IBOutlet weak var tacoImage: UIImageView!
    @IBOutlet weak var tacoLbl: UILabel!
    
    var taco: Taco!
    
    func configuringCell(taco: Taco) {
        
        self.taco = taco
        tacoImage.image = UIImage(named: taco.proteinId.rawValue)
        tacoLbl.text = taco.productName
    }
    

}
