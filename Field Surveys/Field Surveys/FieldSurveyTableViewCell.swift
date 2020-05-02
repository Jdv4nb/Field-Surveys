//
//  FieldSurveyTableViewCell.swift
//  Field Surveys
//
//  Created by Jonathan Van Egeren on 5/1/20.
//  Copyright © 2020 Jonathan Van Egeren. All rights reserved.
//

import UIKit

class FieldSurveyTableViewCell: UITableViewCell {

    @IBOutlet weak var classificationIconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
