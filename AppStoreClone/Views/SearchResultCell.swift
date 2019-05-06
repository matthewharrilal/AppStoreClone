//
//  SearchResultCell.swift
//  AppStoreClone
//
//  Created by Matthew Harrilal on 5/5/19.
//  Copyright © 2019 Matthew Harrilal. All rights reserved.
//

import Foundation
import UIKit

class SearchResultCell: UICollectionViewCell {
    
    lazy var screenshot1 = self.createImageView()
    lazy var screenshot2 = self.createImageView()
    lazy var screenshot3 = self.createImageView()
    
    let appIconImageView: UIImageView = {
        let view = UIImageView()
        view.backgroundColor = .red
        view.constrainWidth(withWidth: 60)
        view.constrainHeight(withHeight: 60)
        
        view.layer.cornerRadius = 12
        return view
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "App Name"
        return label
    }()
    
    let categoryLabel: UILabel = {
        let label = UILabel()
        label.text = "Photos & Video"
        return label
    }()
    
    let ratingsLabel: UILabel = {
        let label = UILabel()
        label.text = "9.26m"
        return label
    }()
    
    let getButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("GET", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 20)
        button.backgroundColor = .darkGray
        
        button.layer.cornerRadius = 20
        button.backgroundColor = .lightGray
        
        button.constrainHeight(withHeight: 32)
        button.constrainWidth(withWidth: 80)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .yellow
        
        let labelsStackView = UIStackView(arrangedSubviews: [
                nameLabel, categoryLabel, ratingsLabel
            ])
        
        labelsStackView.axis = .vertical
        
        let infoStackView = UIStackView(arrangedSubviews: [
                appIconImageView, labelsStackView, getButton
            ])
        
        
        
        infoStackView.spacing = 12
        infoStackView.alignment = .center // Aligns all elements in the stack view in the center
        addSubview(infoStackView)
        
        let padding = UIEdgeInsets(top: 10, left: 10, bottom: -10, right: -10)
        
        infoStackView.fillSuperview(padding: padding)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createImageView() -> UIImageView {
        let imageView = UIImageView()
        imageView.backgroundColor = .blue
        return imageView
    }
}

