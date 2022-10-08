//
//  FruitViewController.swift
//  valentin.kahn-barberon.rattrapage
//
//  Created by Valentin Kahn-Barberon on 06/10/2022.
//

import UIKit

class FruitViewController: UIViewController {

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var genreLbl: UILabel!
    @IBOutlet weak var familleLbl: UILabel!
    @IBOutlet weak var ordreLbl: UILabel!
    
    var fruit: FruitModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLbl.text = fruit?.name
        genreLbl.text = fruit?.genus
        familleLbl.text = fruit?.family
        ordreLbl.text = fruit?.order
    }

}
