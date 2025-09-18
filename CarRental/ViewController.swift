//
//  ViewController.swift
//  CarRental
//
//  Created by Ferid on 06.09.25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageLogo: UIImageView!

    @IBOutlet weak var userName: UITextField!

    @IBOutlet weak var userPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func logIn(_ sender: Any) {
        let controller = storyboard?.instantiateViewController(
            identifier: "HomeController"
        ) as! HomeController
        navigationController?.show(controller, sender: nil)
    }
}



