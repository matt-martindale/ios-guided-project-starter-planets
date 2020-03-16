//
//  SettingsViewController.swift
//  Planets
//
//  Created by Matthew Martindale on 2/19/20.
//  Copyright © 2020 Lambda Inc. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var plutoToggle: UISwitch!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateViews()
    }
    
    
    @IBAction func didTogglePluto(_ sender: UISwitch) {
//        let userDefaults = UserDefaults.standard
        UserDefaults.standard.set(sender.isOn, forKey: .shouldShowPlutoKey)
        
        //User defaults Dictionary
        /*
         
         Dictionary [String : AnyType]
         [
         "ShouldShowPluto" : true
         "FavoriteNumber" : 7
         ]
         
         */
    }
    
    private func updateViews() {
        plutoToggle.isOn = UserDefaults.standard.bool(forKey: .shouldShowPlutoKey)
    }
    
}
