//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Артем Иванов on 27.11.2024.
//

import UIKit

final class ContactListViewController: UITableViewController {
    
    var person: [Person]!

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        person.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = person[indexPath.row]
        
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as? ContactDetailsViewController
            detailVC?.person = person[indexPath.row]
        }
    }
}
