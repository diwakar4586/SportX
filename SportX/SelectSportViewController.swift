//
//  SelectSportViewController.swift
//  SportX
//
//  Created by student on 28/04/24.
//

import UIKit

class SelectSportViewController: UIViewController {
   
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        let destinationVC = self.storyboard?.instantiateViewController(identifier: "MainTabBarController")
        
        if let destinationVC {
            self.navigationController?.pushViewController(destinationVC, animated: true)
            print(self.navigationController)
            // present(destinationVC, animated: true)
        }
    }

}
