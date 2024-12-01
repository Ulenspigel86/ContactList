//
//  PersonsListViewController.swift
//  ContactList
//
//  Created by Артем Иванов on 27.11.2024.
//

import UIKit

final class PersonsListViewController: UITabBarController  {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        let person = Person.getContacts()
        
        let contactListVC = viewControllers?.first as? ContactListViewController
        let sectionVC = viewControllers?.last as? SectionTableViewController
        
        contactListVC?.person = person
        sectionVC?.person = person
    }
}
