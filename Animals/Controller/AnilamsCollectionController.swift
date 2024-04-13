//
//  AnilamsCollectionControllerViewController.swift
//  AnimalsGroup
//
//  Created by HTLILI on 10/04/2024.
//

import UIKit

class AnilamsCollectionController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var zoo: [AnimalCategory] = [
     AnimalCategory(name: "Mammifères", animals: Datas().mammiferes),
     AnimalCategory(name: "Reptiles", animals: Datas().reptiles),
     AnimalCategory(name: "Oiseaux", animals: Datas().oiseaux)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ToDetails" {
            if let next = segue.destination as? DetailAnimalController {
                next.animal = sender as? Animal
            }
        }
    }
    

}
