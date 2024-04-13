//
//  AnimalCell.swift
//  AnimalsGroup
//
//  Created by HTLILI on 12/04/2024.
//

import UIKit

class AnimalCell: UICollectionViewCell {
    @IBOutlet weak var animalImage: UIImageView!
    @IBOutlet weak var animalName: UILabel!
    
    var animal: Animal! {
        didSet {
            contentView.clipsToBounds = true
            contentView.layer.cornerRadius = 20
            animalName.text = animal.name
            animalImage.image = UIImage(named: animal.imageString)
        }
    }
}
