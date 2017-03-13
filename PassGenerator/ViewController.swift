//
//  ViewController.swift
//  PassGenerator
//
//  Created by Daniel Lambrecht on 11/03/2017.
//  Copyright © 2017 Lambrecht Design. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let aManager = Manager(birthDate: nil, firstName: "Dani", lastName: "Lam", company: nil, streetAddress: "Tend", city: "Hornslet", state: "Wash", zip: 8543)
        print(aManager.discountAccess)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

