//
//  myMessageCellTableViewCell.swift
//  milestone1_test_nexttier
//
//  Created by ali on 9/9/22.
//

import UIKit

class myMessageCellTableViewCell: UITableViewCell {

    @IBOutlet weak var msgLabel: UILabel!
    
    
    override func awakeFromNib() {

        super.awakeFromNib()
        
        
//        myMessageCellTableViewCell.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: "msgCell")
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
        
        // Configure the view for the selected state
    }
    
}
