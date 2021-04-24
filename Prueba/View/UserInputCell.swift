//
//  UserInputCell.swift
//  Prueba
//
//  Created by María Fernanda Bracho Salazar on 24.04.21.
//

import UIKit
import TinyConstraints

class UserInputCell: UITableViewCell {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.font = .preferredFont(forTextStyle: .headline)
        return label
    }()
    
    let slider: UISlider = {
        let slider = UISlider()
        slider.addTarget(self, action: #selector(sliderValueChanged(_:)), for: .valueChanged)
        return slider
    }()
    
    let textView: UITextView = {
        let textView = UITextView()
        textView.font = .preferredFont(forTextStyle: .subheadline)
        textView.width(55)
        return textView
    }()
    
    let unitLabel: UILabel = {
        let label = UILabel()
        label.font = .preferredFont(forTextStyle: .subheadline)
        return label
    }()
    
    @objc private func sliderValueChanged(_ sender: UISlider) {
        
    }
    
    private func setUp() {
        contentView.addSubview(titleLabel)
        contentView.addSubview(slider)
        contentView.addSubview(textView)
        contentView.addSubview(unitLabel)
        
        titleLabel.topToSuperview(offset: 12)
        titleLabel.leadingToSuperview(offset: 12)
        
        textView.trailingToSuperview(offset: 12)
        textView.topToBottom(of: titleLabel, offset: 24)
        
        unitLabel.trailingToLeading(of: textView, offset: -12)
        unitLabel.centerY(to: textView)
        
        slider.leadingToSuperview(offset: 24)
        slider.trailingToSuperview(offset: 24)
        slider.topToBottom(of: unitLabel, offset: 12)
        slider.bottomToSuperview(offset: -12)
        
    }
}

extension UITableViewCell {
    static let reuseIdentifier = String(describing: self)
}
