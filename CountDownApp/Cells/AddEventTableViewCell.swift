//
//  AddEventTableViewCell.swift
//  CountDownApp
//
//  Created by usopp on 2020/7/22.
//  Copyright © 2020 usoppb. All rights reserved.
//

import UIKit
import SnapKit

class AddEventTableViewCell: UITableViewCell {
    private let verticalStack = UIStackView()
    private let titleLabel = UILabel()
    private let contentField = UITextField()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViews()
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    func setupViews() {
        verticalStack.axis = .vertical
        contentView.addSubview(verticalStack)
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
