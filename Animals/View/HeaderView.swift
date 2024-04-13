//
//  HeaderView.swift
//  AnimalsGroup
//
//  Created by HTLILI on 12/04/2024.
//

import UIKit

class HeaderView: UICollectionReusableView {
    @IBOutlet weak var contentV: UIView!
    @IBOutlet weak var lbl: UILabel!
    
    func setUp(_ title: String) {
        contentV.clipsToBounds = true
        contentV.layer.cornerRadius = 10
        lbl.text = title
    }
}
