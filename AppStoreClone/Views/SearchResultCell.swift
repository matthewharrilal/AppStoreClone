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
    
    let imageView: UIImageView = {
        let view = UIImageView()
        view.backgroundColor = .red
        
        return view
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "App Name"
        return label
    }()
    
    let getButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("GET", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 24)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .yellow
        
        let stackView = UIStackView(arrangedSubviews: [
                imageView, nameLabel, getButton
            ])
        
        stackView.spacing = 12
        addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

