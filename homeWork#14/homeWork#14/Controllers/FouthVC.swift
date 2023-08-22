//
//  FouthVC.swift
//  homeWork#14
//
//  Created by Илья Пугачёв on 20.08.23.
//

import UIKit

class FouthVC: UIViewController {
    
    var dataString: String?
    
    @IBOutlet weak var labelText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelText.text = dataString
    }
    
    @IBAction func backAction(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindToFirstVC", sender: nil)
    }
}
