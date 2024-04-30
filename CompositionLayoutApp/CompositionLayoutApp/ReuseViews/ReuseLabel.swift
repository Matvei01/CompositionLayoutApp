//
//  ReuseLabel.swift
//  CompositionLayoutApp
//
//  Created by Matvei Khlestov on 01.05.2024.
//

import UIKit

final class ReuseLabel: UILabel {
    
    init(font: UIFont, textColor: UIColor? = nil, alignment: NSTextAlignment? = nil) {
        super.init(frame: .zero)
        setupLabel(font: font, textColor: textColor ?? .black, alignment: alignment ?? .left)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLabel(font: UIFont, textColor: UIColor, alignment: NSTextAlignment) {
        self.font = font
        self.textColor = textColor
        textAlignment = alignment
        numberOfLines = 0
        translatesAutoresizingMaskIntoConstraints = false
    }
}
