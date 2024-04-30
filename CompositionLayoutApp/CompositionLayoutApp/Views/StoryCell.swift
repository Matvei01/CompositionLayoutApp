//
//  StoryCell.swift
//  CompositionLayoutApp
//
//  Created by Matvei Khlestov on 30.04.2024.
//

import UIKit

// MARK: - CellProtocol
protocol CellProtocol: AnyObject {
    static var reuseID: String { get }
    func configure(with item: CollectionItem)
}

// MARK: - StoryCell
final class StoryCell: UICollectionViewCell, CellProtocol {
    static var reuseID: String = "StoryCell"
    
    // MARK: - UI Elements
    private lazy var imageView: UIImageView = {
        return $0
    }(ReuseImageView(radius: 40))
    
    private lazy var nameLabel: UILabel = {
        return $0
    }(ReuseLabel(font: .systemFont(ofSize: 16, weight: .medium), alignment: .center))
    
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
        nameLabel.text = item.name
    }
}

// MARK: - Private methods
private extension StoryCell {
    func setupView() {
        addSubviews()
        
        setConstraints()
    }
    
    func addSubviews() {
        setupSubviews(imageView, nameLabel)
    }
    
    func setupSubviews(_ subviews: UIView... ) {
        for subview in subviews {
            addSubview(subview)
        }
    }
}

// MARK: - Constraints
private extension StoryCell {
    func setConstraints() {
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 80),
            imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor),
            
            nameLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 5),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            nameLabel.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
