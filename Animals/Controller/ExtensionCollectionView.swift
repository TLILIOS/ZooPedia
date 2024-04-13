//
//  ExtentionCollectionView.swift
//  AnimalsGroup
//
//  Created by HTLILI on 12/04/2024.
//

import UIKit

extension AnilamsCollectionController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func setUp() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.collectionViewLayout = layout()
    }
    
    func layout() -> UICollectionViewFlowLayout {
        let cote = collectionView.frame.width * 0.48
        let size = CGSize(width: cote, height: cote)
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = size
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 10
        layout.headerReferenceSize = CGSize(width: collectionView.frame.width, height: 75)
        return layout
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return zoo.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
       return zoo[section].animals.count
        // En detail:
//        let zooSection = zoo[section]
//        let animals = zooSection.animals
//        return animals.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let animal = zoo[indexPath.section].animals[indexPath.item]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AnimalCell", for: indexPath) as! AnimalCell
        cell.animal = animal
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader {
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "Header", for: indexPath) as! HeaderView
            header.setUp(zoo[indexPath.section].name)
            return header
            
        }
        return UICollectionReusableView()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let animal = zoo[indexPath.section].animals[indexPath.item]
        performSegue(withIdentifier: "ToDetails", sender: animal)
    }
}
