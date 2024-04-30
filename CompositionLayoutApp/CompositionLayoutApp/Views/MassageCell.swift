//
//  MassageCell.swift
//  CompositionLayoutApp
//
//  Created by Matvei Khlestov on 30.04.2024.
//

import UIKit

// MARK: - MassageCell
final class MassageCell: UICollectionViewCell, CellProtocol {
    static var reuseID: String = "MassageCell"
    
    // MARK: - UI Elements
    private lazy var imageView: UIImageView = {
        return $0
    }(ReuseImageView(radius: 20))
    
    private lazy var textLabel: UILabel = {
        return $0
    }(ReuseLabel(font: .systemFont(ofSize: 14, weight: .medium)))
    
    // MARK: - Initializer
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Public methods
    func configure(with item: CollectionItem) {
        imageView.image = UIImage(named: item.image)
        textLabel.text = item.text
    }
}

// MARK: - Private methods
private extension MassageCell {
    func setupView() {
        backgroundColor = .appGray
        clipsToBounds = true
        layer.cornerRadius = 10
        
        addSubviews()
        
        setConstraints()
    }
    
    func addSubviews() {
        setupSubviews(imageView, textLabel)
    }
    
    func setupSubviews(_ subviews: UIView... ) {
        for subview in subviews {
            addSubview(subview)
        }
    }
}

// MARK: - Constraints
private extension MassageCell {
    func setConstraints() {
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: topAnchor, constant: 13),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            imageView.widthAnchor.constraint(equalToConstant: 61),
            imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor),
            
            textLabel.topAnchor.constraint(equalTo: imageView.topAnchor),
            textLabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: 12),
            textLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
    }
}



