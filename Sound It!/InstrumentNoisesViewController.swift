//
//  InstrumentNoisesViewController.swift
//  Sound It!
//
//  Created by Sam Blackburn on 06/12/2018.
//  Copyright © 2018 Sam Blackburn. All rights reserved.
//

import UIKit

class InstrumentNoisesViewController: UITableViewController {

    @IBOutlet weak var tableViewOutlet: UITableView!
    
    @IBAction func barBackButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
    var noises = SomeData.generateInstrumentsNoiseData() // retrieves data from class generateNoiseData from file SomeData
}

extension InstrumentNoisesViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return noises.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { // creates function
        let cell = tableView.dequeueReusableCell(withIdentifier: "NoiseCell", for: indexPath) as! AnimalNoisesCell // identifies cell
        
        let noise = noises[indexPath.row]
        cell.noise = noise // places name as title
        
        return cell // returns value to be produced in table
    }
}

