//
//  PlanetCollectionViewCell.swift
//  Planets
//
//  Created by Matthew Martindale on 2/19/20.
//  Copyright © 2020 Lambda Inc. All rights reserved.
//

import UIKit

class PlanetCollectionViewCell: UICollectionViewCell {
    
    var planet: Planet? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet weak var planetImageView: UIImageView!
    @IBOutlet weak var planetNameLabel: UILabel!
    
    private func updateViews() {
        planetNameLabel.text = planet?.name
        planetImageView.image = planet?.image
    }
    
}
