//
//  PersonTableViewCell.swift
//  FindACrew
//
//  Created by Ben Gohlke on 3/10/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class PersonTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var birthYearLabel: UILabel!
    
    var person: Person? {
        didSet {
            updateViews()
        }
    }

    private func updateViews() {
        guard let person = person else { return }
        
        nameLabel.text = person.name
        genderLabel.text = person.gender
        birthYearLabel.text = person.birthYear
    }

}
