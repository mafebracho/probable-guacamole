//
//  RadioButtonsView.swift
//  Prueba
//
//  Created by María Fernanda Bracho Salazar on 12.12.20.
//

import UIKit

class RadioButtonsView: UIView {
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.backgroundColor = .white
        return stackView
    }()
    
    var titles: [String] = [] {
        didSet {
            reloadStackView()
        }
    }
    
    var selectedTitle: String? {
        return titles.first
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    private func setUp() {
        addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
            //            stackView.heightAnchor.constraint(equalToConstant: 120)
        ])
    }
    
    private func resetStackView() {
        let arrangedSubviews = stackView.arrangedSubviews
        for arrangedSubview in arrangedSubviews {
            stackView.removeArrangedSubview(arrangedSubview)
            arrangedSubview.removeFromSuperview()
        }
    }
    
    private func reloadStackView() {
        resetStackView()
        for title in titles {
            let button = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setTitle(title, for: .normal)
            button.setTitleColor(.systemGray, for: .normal)
            button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
            button.setImage(UIImage(systemName: "checkmark.circle") , for: .normal)
            button.setImage(UIImage(systemName: "checkmark.circle.fill"), for: .selected)
            button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -24, bottom: 0, right: 0)
            
            stackView.addArrangedSubview(button)
        }
    }
    
    @objc private func buttonTapped(_ sender: UIButton) {
        for button in stackView.arrangedSubviews.compactMap({ $0 as? UIButton }) {
            button.isSelected = sender == button
        }
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUp()
    }
}
