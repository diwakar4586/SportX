//
//  SearchViewController.swift
//  SportX
//
//  Created by student on 28/04/24.
//

import UIKit

class SearchViewController: UIViewController {
    
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    
    @IBAction func switchViews(_ sender:UISegmentedControl){
        if sender.selectedSegmentIndex == 0 {
            firstView.alpha = 1
            secondView.alpha = 0
        }else{
            firstView.alpha = 0
            secondView.alpha = 1
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        secondView.alpha = 0
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
