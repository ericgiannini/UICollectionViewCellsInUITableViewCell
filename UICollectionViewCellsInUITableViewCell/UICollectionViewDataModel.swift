//
//  UICollectionViewDataModel.swift
//  UICollectionViewCellsInUITableViewCell
//
//  Created by Eric Giannini on 3/30/17.
//  Copyright © 2017 Unicorn Mobile, LLC. All rights reserved.
//

import Foundation
import UIKit

class UICollectionViewDataModel : NSObject {
    
    
    var imageViewArray: [String]
    
    init(imageViewArray: [String]) {
        self.imageViewArray = imageViewArray
        
    }
    
    
}

extension UICollectionViewDataModel : UICollectionViewDataSource, UICollectionViewDelegate {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageViewArray.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cellIdentifier: String = "collectionViewCell"
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath)
        
        cell.backgroundColor = .green
        return cell
    }
    
}
