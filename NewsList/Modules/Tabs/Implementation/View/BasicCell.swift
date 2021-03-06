//
//  BasicCell.swift
//  V - VIPER Moulde : View
//
//  Created by Rathish Kannan on 2018. 12. 18..
//  Copyright © 2018. Rathish Kannan. All rights reserved.
//

import UIKit

struct TabVM: CellDisplayable {
    var text:String?
    var font:UIFont?
    var textColor:UIColor?
    var bgColor:UIColor?

    init(text: String?, font: UIFont? = UIFont.init(name: "", size: 12), textColor: UIColor? = UIColor.orange, bgColor: UIColor? = UIColor.black) {
        self.text = text
        self.font = font
        self.textColor = textColor
        self.bgColor = bgColor
    }
    
}

class BasicCell: UICollectionViewCell {
    let titleLabel: UILabel = {
        let lbl = UILabel()
        return lbl
    }()
    
    var indicatorView: UIView!
    var model: TabVM! = TabVM.init(text: "")
 
    override var isSelected: Bool {
        didSet{
            UIView.animate(withDuration: 0.30) {
                self.indicatorView.backgroundColor = self.isSelected ? self.model.textColor : UIColor.clear
                self.layoutIfNeeded()
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        titleLabel.textAlignment = .center
        addSubview(titleLabel)
        addConstraintsWithFormatString(formate: "H:|[v0]|", views: titleLabel)
        addConstraintsWithFormatString(formate: "V:|[v0]|", views: titleLabel)
        
        addConstraint(NSLayoutConstraint.init(item: titleLabel, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0))
        addConstraint(NSLayoutConstraint.init(item: titleLabel, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0))
        
        setupIndicatorView()
    }
    
    
    func configure(model:TabVM) {
        self.model = model
        self.contentView.backgroundColor = model.bgColor
        titleLabel.text = model.text
        titleLabel.font = model.font
        titleLabel.textColor = model.textColor
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        titleLabel.text = ""
    }
   
    func setupIndicatorView() {
        indicatorView = UIView()
        addSubview(indicatorView)
        addConstraintsWithFormatString(formate: "H:|[v0]|", views: indicatorView)
        addConstraintsWithFormatString(formate: "V:[v0(3)]|", views: indicatorView)
    }
}
