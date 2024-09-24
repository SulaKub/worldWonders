//
//  WonderTableViewCell.swift
//  WorldWonders
//
//  Created by Sultan Kubentayev on 10/09/2024.
//

import UIKit
import SDWebImage

class WonderTableViewCell: UITableViewCell {
    @IBOutlet weak var pictureImageView: UIImageView!
    @IBOutlet weak var flagImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        flagImageView.layer.borderWidth = 2.0
        flagImageView.layer.borderColor = UIColor.black.cgColor
        flagImageView.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData (wonder : WorldWonder) {
        nameLabel.text = wonder.name
        authorLabel.text = wonder.author
        yearLabel.text = wonder.year
        flagImageView.sd_setImage(with: URL(string: wonder.flag), completed: nil)
        pictureImageView.sd_setImage(with: URL(string: wonder.picture), completed: nil)
    }
}
