//
//  ImageCell.swift
//  CompositionLayoutApp
//
//  Created by Matvei Khlestov on 30.04.2024.
//

import UIKit

// MARK: - ImageCell
final class ImageCell: UICollectionViewCell, CellProtocol {
    static var reuseID: String = "ImageCell"
    
    // MARK: - UI Elements
    private lazy var imageView: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        return $0
    }(UIImageView())
    
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
    }
}

// MARK: - Private methods
private extension ImageCell {
    func setupView() {
        addSubview(imageView)
        clipsToBounds = true
        layer.cornerRadius = 15
        
        setConstraints()
    }
}

// MARK: - Constraints
private extension ImageCell {
    func setConstraints() {
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
}
