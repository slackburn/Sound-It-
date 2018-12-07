//
//  ViewController.swift
//  Sound It!
//
//  Created by Sam Blackburn on 05/12/2018.
//  Copyright © 2018 Sam Blackburn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func animalButtonPressed(_ sender: UIButton) {
        //displayViewController(identifier: "animalPage")
    }
    
    @IBAction func instrumentsButtonPressed(_ sender: UIButton) {
        //displayViewController(identifier: "instrumentsPage")
    }
    
    @IBAction func weatherButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func transportButtonPressed(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func displayViewController(identifier: String) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "tablePage")
        self.present(nextViewController, animated:true, completion:nil)
    }


}

