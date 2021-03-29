//
//  GenderRadioButtonsView.swift
//  Prueba
//
//  Created by María Fernanda Bracho Salazar on 14.12.20.
//

import UIKit

class GenderRadioButtonsView: UIView {
    private let genderStackView: UIStackView = {
        let genderStackView = UIStackView()
        genderStackView.translatesAutoresizingMaskIntoConstraints = false
        genderStackView.axis = .horizontal
        genderStackView.distribution = .fillProportionally
        genderStackView.backgroundColor = .white
        return genderStackView
    }()
    
    var titles: [String] = [] {
        didSet {
            updateStackView()
        }
    }
    
    var selectedTitle: String? {
        return titles.first
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        format()
    }
    
    private func format() {
        addSubview(genderStackView)
        NSLayoutConstraint.activate([
            genderStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            genderStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            genderStackView.topAnchor.constraint(equalTo: topAnchor),
            genderStackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    private func updateStackView() {
        let genderArrangedSubviews = genderStackView.arrangedSubviews
        for genderArrangedSubview in genderArrangedSubviews {
            genderStackView.removeArrangedSubview(genderArrangedSubview)
            genderArrangedSubview.removeFromSuperview()
        }
    }
    
    private func restoreStackView() {
        updateStackView()
        for title in titles {
            let button = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setTitle(title, for: .normal)
            button.setTitleColor(.black, for: .normal)
            button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
            genderStackView.addArrangedSubview(button)
        }
    }
    
    @objc private func buttonTapped(_ sender: UIButton) {
        for button in genderStackView.arrangedSubviews.compactMap({ $0 as? UIButton }) {
            button.isSelected = sender == button
        }
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        format()
    }
    
}


