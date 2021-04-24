//
//  UserInputCell.swift
//  Prueba
//
//  Created by María Fernanda Bracho Salazar on 24.04.21.
//

import UIKit

class UserInputCell: UITableViewCell {
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
        return textView
    }()
    
    let unitLabel: UILabel = {
        let label = UILabel()
        label.font = .preferredFont(forTextStyle: .subheadline)
        return label
    }()
    
    @objc private func sliderValueChanged(_ sender: UISlider) {
        
    }
}
