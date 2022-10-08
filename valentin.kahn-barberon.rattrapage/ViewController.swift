//
//  ViewController.swift
//  valentin.kahn-barberon.rattrapage
//
//  Created by Valentin Kahn-Barberon on 06/10/2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var TextRandomColor: UILabel!
    
    func random () -> UIColor {
        return UIColor(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1),
            alpha: 1.0
        )
    }

    @IBAction func ButtonColor(_ sender: UIButton) {
        TextRandomColor.textColor = random();
    }
}

