//
//  HistoryCell.swift
//  SmartScanner
//
//  Created by Pawan Dhull on 03/02/21.
//

import UIKit

class HistoryCell: UITableViewCell {

    @IBOutlet weak var cellTitle: UILabel!
    
    @IBOutlet weak var cellDescription: UILabel!
    
    @IBOutlet weak var oqImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
