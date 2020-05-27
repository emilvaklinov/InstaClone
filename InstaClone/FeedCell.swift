//
//  FeedCell.swift
//  InstaClone
//
//  Created by Emil Vaklinov on 27/05/2020.
//  Copyright © 2020 Emil Vaklinov. All rights reserved.
//

import UIKit

class FeedCell: UITableViewCell {

    @IBOutlet weak var userMailLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var userImageView: UIImageView!
    
    @IBOutlet weak var likeLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

    @IBAction func likeButtonClicked(_ sender: Any) {
    }
    
    
}
