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
    

    
    
    
    
    
    
    
    
    

     
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondVC",
           let secondVC = segue.destination as? SecondVC,
           let dataString = sender as? String {
            secondVC.dataString = dataString
        }
    }
}
