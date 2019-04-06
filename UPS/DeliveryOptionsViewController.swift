//
//  DeliveryOptionsViewController.swift
//  UPS
//
//  Created by Consultant on 3/17/19.
//  Copyright © 2019 JuanVitela. All rights reserved.
//

import UIKit

class DeliveryOptionsViewController: UIViewController {
    
    let reusableIdentifier = "deliveryOptionsTableViewCell"
    @IBOutlet weak var deliveryOptionsTV: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDeliveryOptionsTV()

        // Do any additional setup after loading the view.
    }
    
    func setupDeliveryOptionsTV(){
        self.deliveryOptionsTV.delegate = self
        self.deliveryOptionsTV.dataSource = self
    }

}

extension DeliveryOptionsViewController: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reusableIdentifier, for: indexPath) as! DeliveryOptionsTableViewCell
        
        return cell
    }
    
    
}
