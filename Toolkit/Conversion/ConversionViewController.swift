//
//  ConversionViewController.swift
//  Toolkit
//
//  Created by Alex Mai on 2/26/18.
//  Copyright © 2018 Alex Mai. All rights reserved.
//

import Foundation
import UIKit

class ConversionViewController: UICollectionViewController {
    
    var conversionManager = ConversionManager()
    let itemsPerRow: CGFloat = 2
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! ConversionCollectionCell
        cell.backgroundColor = UIColor.clear
        
        let conversionTypes = conversionManager.getConversionTypes()
        cell.captionLabel.text = conversionTypes[indexPath.row].getName()
        cell.imageView.image = conversionTypes[indexPath.row].getImage()
        //print(conversionTypes[indexPath.row].getName())
        
        return cell
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        print(a.getConversionTypes()[0].getName())
    }
    
}

extension ConversionViewController: UICollectionViewDelegateFlowLayout {
    
    //return size of given cell
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        //n+1 number of padding blocks
        let paddingSpace = UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50.0, right: 20.0).left * (itemsPerRow + 1)
        let availableWidth = view.frame.width - paddingSpace
        let widthPerItem = availableWidth / itemsPerRow
        
        return CGSize(width: widthPerItem, height: widthPerItem)
    }
    
    //return spacing between cells, headers, footers
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50.0, right: 20.0)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50.0, right: 20.0).left
    }
    
}
