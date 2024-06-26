//
//  BannerCell.swift
//  CompositionLayoutApp
//
//  Created by Matvei Khlestov on 30.04.2024.
//

import UIKit

// MARK: - BannerCell
final class BannerCell: UICollectionViewCell, CellProtocol {
    static var reuseID: String = "BannerCell"
    
    // MARK: - UI Elements
    private lazy var imageView: UIImageView = {
        return $0
    }(ReuseImageView())
    
    private lazy var headerLabel: UILabel = {
        return $0
    }(ReuseLabel(font: .systemFont(ofSize: 24, weight: .black), textColor: .white))
        
    private lazy var descriptionLabel: UILabel = {
        return $0
    }(ReuseLabel(font: .systemFont(ofSize: 14, weight: .medium), textColor: .white))
        
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
        headerLabel.text = item.header
        descriptionLabel.text = item.text
    }
}

// MARK: - Private methods
private extension BannerCell {
    func setupView() {
        clipsToBounds = true
        layer.cornerRadius = 15
        
        addSubviews()
        
        setConstraints()
    }
    
    func addSubviews() {
        addSubview(imageView)
        
        for subview in [headerLabel, descriptionLabel] {
            imageView.addSubview(subview)
        }
    }
}

// MARK: - Constraints
private extension BannerCell {
    func setConstraints() {
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            headerLabel.topAnchor.constraint(equalTo: imageView.topAnchor, constant: 25),
            headerLabel.leadingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: 24),
            headerLabel.trailingAnchor.constraint(equalTo: imageView.trailingAnchor, constant: -24),
            
            descriptionLabel.topAnchor.constraint(equalTo: headerLabel.bottomAnchor, constant: 41),
            descriptionLabel.leadingAnchor.constraint(equalTo: headerLabel.leadingAnchor),
            descriptionLabel.trailingAnchor.constraint(equalTo: headerLabel.trailingAnchor),
            descriptionLabel.bottomAnchor.constraint(equalTo: imageView.bottomAnchor, constant: -23)
        ])
    }
}
