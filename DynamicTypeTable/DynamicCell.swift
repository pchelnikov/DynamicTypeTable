//
//  DynamicCell.swift
//  DynamicTypeTable
//
//  Created by Mikhail Pchelnikov on 12/10/14.
//  Copyright (c) 2014 Mikhail Pchelnikov. All rights reserved.
//

import UIKit

class DynamicCell: UITableViewCell {
    var headlineLabel: UILabel!
    
    override init?(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        headlineLabel = UILabel(frame: bounds.rectByInsetting(dx: 15.0, dy: 0.0))
        headlineLabel.font = UIFont.preferredFontForTextStyle(UIFontTextStyleHeadline)
        headlineLabel.setTranslatesAutoresizingMaskIntoConstraints(false)
        headlineLabel.numberOfLines = 0
        
        contentView.addSubview(headlineLabel)
        
        var constraints:[AnyObject] = []

        constraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|-15-[headlineLabel]-15-|", options: NSLayoutFormatOptions.allZeros, metrics: nil, views: ["headlineLabel": headlineLabel])
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("V:|-15-[headlineLabel]-15-|", options: NSLayoutFormatOptions.allZeros, metrics: nil, views: ["headlineLabel": headlineLabel])
        
        contentView.addConstraints(constraints)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
