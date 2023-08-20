//
//  FirstVC.swift
//  homeWork#14
//
//  Created by Илья Пугачёв on 20.08.23.
//

import UIKit

class FirstVC: UIViewController {
    
    @IBOutlet weak var labelText: UILabel!
    
    @IBAction func goToSecondVC(_ sender: UIButton) {
        performSegue(withIdentifier: "goToSecondVC", sender: "Hello from FirstVC")
    }
    
    @IBAction func goToThirdVC(_ sender: UIButton) {
        let vc = ThirdVC(nibName: "ThirdVC", bundle: nil)
        vc.dataString = "Hello from XIB VC"
        vc.navigationItem.title = "XIB VC"
        navigationController?.pushViewController(vc, animated: true)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondVC",
           let secondVC = segue.destination as? SecondVC,
           let dataString = sender as? String {
            secondVC.dataString = dataString
            secondVC.firstVC = self
        }
    }
}
