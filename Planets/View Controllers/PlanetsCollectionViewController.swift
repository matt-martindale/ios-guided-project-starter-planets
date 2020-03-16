//
//  PlanetsCollectionViewController.swift
//  Planets
//
//  Created by Matthew Martindale on 2/19/20.
//  Copyright © 2020 Lambda Inc. All rights reserved.
//

import UIKit

class PlanetsCollectionViewController: UICollectionViewController {
    
    private let planetController = PlanetController()

    @IBAction func unwindToPlanetCollectionViewController(segue: UIStoryboardSegue) {
        self.collectionView.reloadData()
    }
    

    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return planetController.planets.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PlanetCell", for: indexPath) as? PlanetCollectionViewCell else { return UICollectionViewCell() }
        
        let planet = planetController.planets[indexPath.item]
        cell.planet = planet
    
        return cell
    }

    

}
