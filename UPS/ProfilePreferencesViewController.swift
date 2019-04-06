//
//  ProfilePreferencesViewController.swift
//  UPS
//
//  Created by Consultant on 3/17/19.
//  Copyright © 2019 JuanVitela. All rights reserved.
//

import UIKit

class ProfilePreferencesViewController: UIViewController {
    
    @IBOutlet weak var profilePreferencesMenuTV: UITableView!
    
    let reuseIdentifier = "cell"
    let optionsArray = ["Membership Information","Delivery Options","Alerts","Vacations","Push Notifications","Hide Delivered Packages"]

    override func viewDidLoad() {
        super.viewDidLoad()
        setupOptionsTableView()

    }
    
    func setupOptionsTableView() {
        self.profilePreferencesMenuTV.delegate = self
        self.profilePreferencesMenuTV.dataSource = self
    }

}

extension ProfilePreferencesViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return optionsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        let option = optionsArray[indexPath.row]
        cell.textLabel?.text = option
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let destination = UIViewController() // Your destination
        navigationController?.pushViewController(destination, animated: true)
    }
    
    
    
    
}
